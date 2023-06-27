from flask import Flask, render_template, session, url_for, redirect , request
from flask_mysqldb import MySQL
from datetime import datetime, timedelta
import json
import smtplib
import random
import requests
import time


################
#  config file
################
with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'sign_in_form' 
app.config['SECRET_KEY'] = 'thisisasecretkey'

##################
#  database Query
##################
mysql = MySQL(app)

################
#  mobile URL
################
url = "https://www.fast2sms.com/dev/bulkV2"

otp = random.randint(100000,999999)


################
#  Homepage
################
@app.route("/")
def homepage():
    mycursor = mysql.connection.cursor()
    
    mycursor.execute("select * from ngoprofile ")
    data = mycursor.fetchall()

    mycursor.execute("SELECT * from ngo  INNER JOIN contacts on ngo.resuser=contacts.user ORDER BY ngo.srno DESC ")
    dat = mycursor.fetchall()

    mycursor.execute("SELECT * from ngo INNER JOIN contacts on ngo.ngouser=contacts.user ORDER BY ngo.srno DESC")
    da = mycursor.fetchall()


    mysql.connection.commit()
    mycursor.close()

    return render_template("homepage.html", data = data,dat=dat,da=da)

################ 
#  Login
################
@app.route("/login", methods=['GET', 'POST'])
def login():

    if(request.method == 'POST'):
        abcd = request.form
        user = abcd['text']
        password = abcd['password']
        select11 = abcd['select']

        session["user"] = user

        mycursor = mysql.connection.cursor()
        mycursor.execute("select * from contacts where user='"+user +
                         "' and password='"+password+"' and select1 = '"+select11+"'")
        r = mycursor.fetchall()
        mysql.connection.commit()
        mycursor.close()
        count1 = mycursor.rowcount
        if count1 == 1:
            if select11 == 'Sources':
                return redirect(url_for('res',usr = user))
            elif select11 == 'NGO':
                return redirect(url_for('ngo', usr = user))
            else:
                return "Error 404"
        else:
            msg = "Username OR Password OR Field is Incorrect"
            return render_template("login.html", msg=msg)
    return render_template("login.html")

###################
# Forget Password
###################
@app.route("/password", methods=['GET', 'POST'])
def password():
    if(request.method == 'POST'):
        u = request.form
        user = u['user']
        new_pass = u['new_pass']
        cnf_pass = u['cnf_pass']

        mycursor = mysql.connection.cursor()
        mycursor.execute("select * from contacts ")
        ms = mycursor.fetchall()
        for i in ms:   
            if i[2] == user:
                tb = "UPDATE contacts SET password = %s,cnf_password = %s  WHERE user = %s"
                val = (new_pass,cnf_pass,user)
            
                mycursor.execute(tb,val)
                r = mycursor.fetchall()
                mysql.connection.commit()
                mycursor.close() 
                return "Successfully Updated"
        else:
            return "Username is wrong"
        #mysql.connection.commit()
        #mycursor.close() 
    return render_template("password.html")

#####################
# UserName Password
####################
@app.route("/username", methods=['GET', 'POST'])
def username():
    if(request.method == 'POST'):
        number = request.form.get('number')
        user = request.form.get('text')

        mycursor = mysql.connection.cursor()
        mycursor.execute("select * from contacts ")
        record = mycursor.fetchall()
        for r in record:
            if r[2] == user:
                msg = "Taken !"
                return render_template("username.html", msg = msg)
        else:        
            mycursor.execute("select * from contacts ")
            record = mycursor.fetchall()
            for i in record:   
                if i[6] == number:
                    tb = "UPDATE contacts SET user = %s WHERE num = %s"
                    val = (user,number)
                    mycursor.execute(tb,val)
                    r = mycursor.fetchall()
                    mysql.connection.commit()
                    mycursor.close() 
                    return redirect(url_for("login"))
            else:
                return "Username is wrong"
    return render_template("username.html")

#####################
#  Email signup Page
#####################
@app.route("/E_signUp", methods=['GET', 'POST'])
def E_signUp():
    if(request.method == 'POST'):
        email = request.form.get('email')

        mycursor = mysql.connection.cursor()
        mycursor.execute(''' INSERT INTO email (Email, otp, date) VALUES (%s, %s ,%s )''',(email,otp,datetime.now()))
        mycursor.execute("select * from email ")
        record = mycursor.fetchall()
        ''' for r in record:
            if r[1] == email:
                msg = "Taken"
                return render_template("E_signUp.html", msg = msg) '''
        mysql.connection.commit()
        mycursor.close()
        otp2 = str(otp)
    
        send = params["gmail_user"]
        receive = email
        message = f"""Subject : OTP Verification
            \n
{otp2}

Your OTP is {otp2} for Email verification 
(do not share your OTP)
            """ 
        password111 = params["gmail_password"] 
        smtpObj = smtplib.SMTP("smtp.gmail.com",587)
        smtpObj.starttls()
        smtpObj.login(send,password111)
        smtpObj.sendmail(send,receive,message)
        print("Sent Email") 
        return redirect(url_for('E_OTPsignUp'))       
    return render_template("E_signUp.html")

################
#  Email OTP 
################
@app.route("/E_OTPsignUp", methods=['GET','POST'])
def E_OTPsignUp():
    if(request.method == 'POST'):
        userotp = request.form.get("OTP") 
        if str(otp) == (userotp):
            return redirect(url_for('M_signUp'))
        elif str(otp) != (userotp):
            msg = "Wrong "
            return render_template("E_OTPsignUp.html", msg = msg)
    return render_template("E_OTPsignUp.html")

#######################
#  Mobile signup page
#######################
@app.route("/M_signUp", methods=['GET','POST'])
def M_signUp():
    if(request.method == 'POST'):
        
        MobileNo = request.form.get('number')
        mycursor = mysql.connection.cursor()

        mycursor.execute(''' INSERT INTO phonedb (MobileNo, date) VALUES (%s ,%s )''',(MobileNo,datetime.now()))
        mysql.connection.commit()
        mycursor.close()
        try:
            global otp2 
            otp1 = random.randint(1000,9999)
            otp2 = str(otp1)
            message = otp2
            numbers = MobileNo
            payload = f"sender_id=TXTIND&message={message}&route=v3&language=english&numbers={numbers}"

            headers = {
                        'authorization': "A2l7hvHsy4QtKjIDJVpUPofxG3LbTZrnF8dEXYCW6OMqci9NzgY8FmlZbLN7cnj5qfKGhUi16BMd94Jo",
                        'Content-Type': "application/x-www-form-urlencoded",
                        'Cache-Control': "no-cache",
                        }

            response = requests.request("POST", url, data=payload, headers=headers)
            print(response.text)
            return redirect(url_for("M_OTPsignUp"))
        except:
            return render_template("M_signUp.html")

    return render_template("M_signUp.html")

################
#  Mobile OTP
################
@app.route("/M_OTPsignUp", methods=['GET','POST'])
def M_OTPsignUp():
    if(request.method == 'POST'):
        userotp = request.form.get("M_OTP") 
        if str(otp2) == (userotp):
            return redirect(url_for("signUp"))
        elif str(otp2) != (userotp):
            msg = "Wrong "
            return render_template("M_OTPsignUp.html", msg = msg)

    return render_template("M_OTPsignUp.html")

#####################
#  Main signup Page
#####################
@app.route("/signUp", methods=['GET', 'POST'])
def signUp():    
    if(request.method == 'POST'):
        oneV = request.form
        user = oneV['text']
        name = oneV['name']
        password = oneV['pass']
        cnf_pass = oneV['cnf_pass']
        select = oneV['select']
        mycursor = mysql.connection.cursor()
        # Check Weather User Is Taken Or Not
        mycursor.execute("select * from contacts ")
        record = mycursor.fetchall()
        for r in record:
            if r[2] == user:
                msg = "Taken"
                return render_template("signUp.html", msg = msg)

        mycursor.execute("SELECT Email FROM email ORDER BY srno DESC LIMIT 1" )
        email1 = mycursor.fetchone()
        
        mycursor.execute("SELECT MobileNo FROM `phonedb` ORDER BY `Sr.No` DESC LIMIT 1" )
        num1 = mycursor.fetchone()

        mycursor.execute(''' INSERT INTO contacts (email, user, name, password,cnf_password,num,date,select1) VALUES (%s, %s ,%s,%s,%s,%s,%s,%s )''',(email1,user,name,password,cnf_pass,num1,datetime.now(),select))

        mysql.connection.commit()
        mycursor.close()
        send = params["gmail_user"]
        receive = [params["gmail_user"],email1]
        message = f"""Subject : Successfully Signed In
            \n
Welcome to Appitite,

You are now successfully register your email with Appitite.
            """ 
       
        password111 = params["gmail_password"]
        smtpObj = smtplib.SMTP("smtp.gmail.com",587)
        smtpObj.starttls()
        smtpObj.login(send,password111)
        smtpObj.sendmail(send,receive,message)
        return redirect(url_for("login"))
        #return f"email {email1}"

    return render_template("signUp.html")

################
#  Sources Page
################
@app.route("/res/<usr>", methods=['GET', 'POST'])
def res(usr):
    if "user" in session:
        mycursor = mysql.connection.cursor()
        user = session["user"]
        mycursor.execute('Select * from ngoprofile')
        msg = mycursor.fetchall()
        mysql.connection.commit()
        mycursor.close()
        if (request.method == 'POST'):
            check = request.form.get('check')
            desBOX = request.form.get('des')
            number = request.form.get('mobile_num')
            pincode = request.form.get('pincode')
            address = request.form.get('add')
            name = request.form.get('city')

            mycursor = mysql.connection.cursor()
            mycursor.execute(''' INSERT INTO restaurant (Ngouser,Resuser,desbox,date,number,pincode,address,city) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)''',(check,user,desBOX,datetime.now(),number,pincode,address,name))
            
            mycursor.execute("SELECT * FROM contacts")
            em = mycursor.fetchall()
            mysql.connection.commit()
            mycursor.close()
            for k in em:
                if k[2] == check:
                    mycursor = mysql.connection.cursor()
                    mycursor.execute("SELECT email FROM contacts WHERE user ='"+check+"'LIMIT 1 ")
                    e = mycursor.fetchall()
                    mycursor.execute("SELECT name FROM contacts WHERE user ='"+check+"' ")
                    e1 = mycursor.fetchall()
                    for i in e1:
                        for j in i:
                            j
                    send = params["gmail_user"]
                    receive = e
                    message = f"""Subject : New food pickup request!
            \n
Hi {j},

New request for food pickup available for you!

Available food:
{desBOX}

Address:
{address}

Contact:{number}
"""
                    password111 = params["gmail_password"]
                    smtpObj = smtplib.SMTP("smtp.gmail.com",587)
                    smtpObj.starttls()
                    smtpObj.login(send,password111)
                    smtpObj.sendmail(send,receive,message)
                    mysql.connection.commit()
                    mycursor.close()
                    return render_template("res.html",usr=usr)
            return render_template("res.html",usr=usr)
        else:
            tp = "Data Not Submitted"
        return render_template("res.html",msg=msg, tp = tp,usr=usr)
    else:
        return redirect(url_for("login"))

#######################
#  Profile For Sources
#######################
@app.route("/res/<usr>/profile", methods=['GET', 'POST'])
def profile(usr):
    if "user" in session:
        user = session["user"]
        if(request.method == 'POST'):
            old_pass = request.form.get('old_pass')
            new_pass = request.form.get('new_pass')
            cnf_pass = request.form.get('cnf_pass')

            mycursor = mysql.connection.cursor()
            dt = "UPDATE contacts SET password = %s,cnf_password = %s WHERE password = %s"
            vle = (new_pass,cnf_pass,old_pass)
            mycursor.execute(dt,vle)

            mysql.connection.commit()
            mycursor.close()
            return render_template("profile.html",usr = usr)
        return render_template("profile.html",usr = usr)
    else:
        return redirect(url_for("login"))

@app.route("/res/<usr>/profile/AddAccount", methods=['GET', 'POST'])
def Account(usr):
    if "user" in session:
        user = session["user"]
        return render_template("Accountothers.html",usr = usr)
    else:
        redirect(url_for("login"))

######################
#  Logout For Sources
######################
@app.route('/logout', methods=['GET', 'POST'])
def logout():
    session.pop("user", None)
    return redirect(url_for('login'))

################
#  NGO Page
################
@app.route("/ngo/<usr>", methods=['GET', 'POST'])
def ngo(usr):
    if "user" in session:
        user = session["user"]
        mycursor = mysql.connection.cursor()

        if (request.method == 'POST'):
            resuser = request.form.get('resuser')
            food = request.form.get('food')
            naam = request.form.get('naam')

            mycursor.execute(' INSERT INTO ngo(resuser,ngouser,food,name, date) VALUES (%s,%s,%s,%s,%s)',(resuser,user,food,naam,datetime.now()))
            
            mycursor.execute('SELECT * FROM ngo ORDER BY srno DESC limit 1')
            rst = mycursor.fetchall()
            
            for i in rst:
                if i[1] == resuser:
                    mycursor.execute("SELECT email FROM contacts WHERE user ='"+resuser+"' ")
                    emai = mycursor.fetchall()
                    mycursor.execute("SELECT name FROM contacts WHERE user ='"+user+"' ")
                    e2 = mycursor.fetchall()
                    for i in e2:
                        for j in i:
                            j
                    send = params["gmail_user"]
                    receive = emai
                    message = f"""Subject : Request for pickup confirm!
            \n
Hi {naam},

Ngo {j} is on the way to pick food please be patient.
Thankyou for continously supporting us we apprecitate your efforts!

Contact:
"""
                    
                    password111 = params["gmail_password"]
                    smtpObj = smtplib.SMTP("smtp.gmail.com",587)
                    smtpObj.starttls()
                    smtpObj.login(send,password111)
                    smtpObj.sendmail(send,receive,message)
                    mysql.connection.commit()
                    mycursor.close()
                    return render_template("ngo.html",usr=usr) 

        mycursor.execute('Select * from ngoprofile')
        msg = mycursor.fetchall()
        for i in msg:      
            if i[1] == user:
                mycursor.execute("SELECT * FROM restaurant  WHERE Ngouser ='"+user+"'")
                check = mycursor.fetchall()
                for j in check:
                    if user == j[1]:
                        mycursor.execute("SELECT * FROM restaurant WHERE date >= now() - INTERVAL 1 hour AND Ngouser ='"+user+"'")
                        rest = mycursor.fetchall()
                        return render_template("ngo.html",rest=rest,usr=usr)
                else:
                    return render_template("ngo.html",usr=usr)

        mysql.connection.commit()
        mycursor.close()
        return render_template("ngo.html",usr=usr)
    else:
        return redirect(url_for("login")) 


##################
#  NGO's Profile 
##################
@app.route("/ngo/<usr>/profile1", methods=['GET', 'POST'])
def profile1(usr):
    if "user" in session:
        user = session["user"]
        if(request.method == 'POST'):
            name = request.form.get('full_name')
            number = request.form.get('mobile_num')
            pincode = request.form.get('pincode')
            addre = request.form.get('add')
            area = request.form.get('area_name')
            landmark = request.form.get('landmark')
            city = request.form.get('city')
            state = request.form.get('state')

            address = addre +" " + landmark +' '+ area

            mycursor = mysql.connection.cursor()

            mycursor.execute("SELECT * from ngoprofile ORDER BY srno DESC")
            ng = mycursor.fetchall()
            #n = list(ng)
            #return f"{user}"
            for i in ng:
                if i[1] == user:
                    mycursor = mysql.connection.cursor()
                    tb = "UPDATE ngoprofile SET name = %s,number = %s,pincode = %s,address = %s,city = %s,state = %s  WHERE user = %s"
                    val = (name,number,pincode,address,city,state,user)
                    mycursor.execute(tb,val)
                
                    t = "UPDATE contacts SET name = %s,num = %s WHERE user = %s"
                    vl = (name,number,user)
                    mycursor.execute(t,vl)

                    mysql.connection.commit()
                    mycursor.close()
                    return render_template("profile1.html",usr=usr)
                else:
                    mycursor = mysql.connection.cursor()
                    mycursor.execute(''' INSERT INTO ngoprofile (user,name,number,pincode,address,city,state,date) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)''',(user,name,number,pincode,address,city,state,datetime.now()))
                    #e = mycursor.fetchall()
                    mysql.connection.commit()
                    mycursor.close()
                    return render_template("profile1.html",usr=usr)
            
            mysql.connection.commit()
            mycursor.close()

        return render_template("profile1.html",usr=usr)
    else:
        return redirect(url_for("login"))

@app.route("/ngo/<usr>/profile1/passwrd", methods=['GET', 'POST'])
def passwrd(usr):
    if "user" in session:
        user = session["user"]
        if(request.method == 'POST'):
            old_pass = request.form.get('old_pass')
            new_pass = request.form.get('new_pass')
            cnf_pass = request.form.get('cnf_pass')

            mycursor = mysql.connection.cursor()
            dt = "UPDATE contacts SET password = %s,cnf_password = %s WHERE password = %s"
            vle = (new_pass,cnf_pass,old_pass)
            mycursor.execute(dt,vle)

            mysql.connection.commit()
            mycursor.close()
            return render_template("passwrd.html",usr=usr)
        return render_template("passwrd.html",usr=usr)
    else:
        return redirect(url_for("login"))

@app.route("/ngo/<usr>/profile1/AddAccount", methods=['GET', 'POST'])
def account(usr):
    if "user" in session:
        user = session["user"]
        return render_template("account.html",usr=usr)
    else:
        return redirect(url_for("login"))

##################
#  Logout For NGO
##################
@app.route('/logout1', methods=['GET', 'POST'])
def logout1():
    session.pop("user", None)
    return redirect(url_for('login'))

################
#  Main
################
if __name__ == '__main__':
    app.run(debug=True, port=5001)
