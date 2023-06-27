var pass1 = document.querySelector('.password');
var pass2 = document.querySelector('.password1');
var show = document.querySelector('.show');
var show1 = document.querySelector('.show1');
var hide = document.querySelector('.hide');
var hide1 = document.querySelector('.hide1');

show.onclick = function () {
    pass1.setAttribute("type", "text");
    show.style.display = "none";
    hide.style.display = "inline-block";
    
}
hide.onclick = function () {
    pass1.setAttribute("type", "password");
    hide.style.display = "none";
    show.style.display = "inline-block";
    
    
}
show1.onclick = function () {
    pass2.setAttribute("type", "text");
    show1.style.display = "none";
    hide1.style.display = "inline-block";
    
    
}
hide1.onclick = function () {
    pass2.setAttribute("type", "password");
    hide1.style.display = "none";
    show1.style.display = "inline-block";
}


function E_signUp() {
    var email = document.f1.email.value;
    if (email == null || email == ""){
        alert("Can't be blank");
        return false;
    }
}

function E_OTPsignUp() {
    var otp = document.f1.OTP.value;
    if (otp == null || otp == ""){
        alert("Can't be blank");
        return false;
    }
}

function M_signUp() {
    var number = document.f1.number.value;
    if (number.length != 10) {
        alert("Enter 10 Digits Mobile Number")
        return false;
    }
    var msg = document.querySelector('.msg');
    msg.style.display = "block";
}

function M_OTPsignUp() {
    var otp = document.f1.M_OTP.value;
    if (otp == null || otp == ""){
        alert("Can't be blank");
        return false;
    }
}

function signUp_form() {
    var name = document.f1.name.value;
    var text = document.f1.text.value;
    var password = document.f1.pass.value;
    var cnf_password = document.f1.cnf_pass.value;
    var select = document.f1.select.value;

    if (text == null || text == "" || name == null || name == "" || select == null || select == "") {
        alert("Can't be blank");
        return false;
    }
   
   if (password.length <= 7) {
       alert("Password must atlest contain 8 letters")
       return false
   }
   if (password.search(/[a-z]/) == -1) {
       alert("Password must at least contaion 1 Lower Case")
        return false;
    }

    if (password.search(/[A-Z]/) == -1) {
        alert("Password must at least contaion 1 Upper Case")
        return false;
    }

    if (password.search(/[0-9]/) == -1) {
        alert("Password must at least contaion 1 Number")
        return false;
    }

    if (password.search(/[`\~\!\@\#\$\%\^\&\*\(\)\_\-\+\?\.\,\<\>\'\"\;\:\ ]/) == -1) {
        alert("Password must at least contaion 1 Special Symbol")
        return false;
    }

    if (password != cnf_password) {
        alert("New Password & Confirm Password must be same");
        return false;
    }
}