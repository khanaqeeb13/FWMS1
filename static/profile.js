// Password Visiblity
var old_pass = document.querySelector('.old-pass');
var show = document.querySelector('.show');
var hide = document.querySelector('.hide');

var new_pass = document.querySelector('.new-pass');
var show1 = document.querySelector('.show1');
var hide1 = document.querySelector('.hide1');

var cnf_pass = document.querySelector('.cnf-pass');
var show2 = document.querySelector('.show2');
var hide2 = document.querySelector('.hide2');

show.onclick = function () {
    old_pass.setAttribute("type", "text");
    show.style.display = "none";
    hide.style.display = "block";
}

hide.onclick = function () {
    old_pass.setAttribute("type", "password");
    hide.style.display = "none";
    show.style.display = "block";
}

show1.onclick = function () {
    new_pass.setAttribute("type", "text");
    show1.style.display = "none";
    hide1.style.display = "block";
}

hide1.onclick = function () {
    new_pass.setAttribute("type", "password");
    hide1.style.display = "none";
    show1.style.display = "block";
}

show2.onclick = function () {
    cnf_pass.setAttribute("type", "text");
    show2.style.display = "none";
    hide2.style.display = "block";
}

hide2.onclick = function () {
    cnf_pass.setAttribute("type", "password");
    hide2.style.display = "none";
    show2.style.display = "block";
}

// Password must not be Blank and New Password and Confirm Password must be same and Password Must contain atleast 8 character
var psd = document.querySelector('#pswd');
psd.onclick = function () {
    var old_pass1 = document.f2.old_pass.value;
    var new_pass1 = document.f2.new_pass.value;
    var cnf_pass1 = document.f2.cnf_pass.value;

    if (old_pass1 == null || old_pass1 == "" || new_pass1 == null || new_pass1 == "" || cnf_pass1 == null || cnf_pass1 == "") {
        alert("Can't be blank");
        return false;
    }

    if (old_pass1.length <= 7 || new_pass1.length <= 7) {
        alert("Password must atlest contain 8 letters")
        return false
    }
    
    if (old_pass1 == new_pass1){
        alert("Old Password & New Password Must Not Be Same");
        return false
    }

    if(new_pass1.search(/[a-z]/)==-1){
        alert("Password must at least contaion 1 Lower Case")
        return false;
    }

    if(new_pass1.search(/[A-Z]/)==-1){
        alert("Password must at least contaion 1 Upper Case")
        return false;
    }

    if(new_pass1.search(/[0-9]/)==-1){
        alert("Password must at least contaion 1 Number")
        return false;
    }

    if(new_pass1.search(/[`\~\!\@\#\$\%\^\&\*\(\)\_\-\+\?\.\,\<\>\'\"\;\:\ ]/)==-1){
        alert("Password must at least contaion 1 Special Symbol")
        return false;
    }
    
    if (new_pass1 != cnf_pass1) {
        alert("New Password & Confirm Password must be same");
        return false;
    }
    else {
        console.log(new_pass1 != cnf_pass1)
        return true;
    }

}

// Enter mobile & Pincode
function newform() {
    var num = document.f1.mobile_num.value;
    var pincode1 = document.f1.pincode.value;
    var user = document.f1.user_name.value;
    var name = document.f1.full_name.value;
    var add = document.f1.add.value;
    var area = document.f1.area_name.value;
    var landmark = document.f1.landmark.value;
    var city = document.f1.city.value;
    var state = document.f1.state.value;

    if (user == null || user == "" || name == null || name == "" || add == null || add == "" || area == null || area == "" || landmark == null || landmark == "" || city == null || city == "" || state == null || state == "") {
        alert("Can't be blank");
        return false;
    }
    if (num.length != 10)  {
        alert("Enter 10 Digits Mobile Number")
        return false;
    }

    if (pincode1.length != 6)  {
        alert("Enter 6 Digits Pincode")
        return false;
    }
}