var pass1 = document.querySelector('.password');
var show = document.querySelector('.show');
var hide = document.querySelector('.hide');

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

function login12() {
    var name = document.myform.text.value;
    var password = document.myform.password.value;
    var select = document.myform.select.value;

    if (name == null || name == "" || select == null || select == "") {
        alert("Can't Be Blank ")
        return false;
    }
    if (password.length < 7) {
        alert("Password must be at least 6 characters long.");
        return false;
    }
}