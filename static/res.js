function newform() {
    var address = document.f1.add.value;
    var city = document.f1.city.value;
    var desBox = document.f1.des.value;

    if (address== null || address == "" || city == null || city == "" || desBox == null || desBox == "") {
        alert("Can't be blank");
        return false;
    }
    
    var num = document.f1.mobile_num.value;
    var pincode1 = document.f1.pincode.value;

    if (num.length != 10)  {
        alert("Enter 10 Digits Mobile Number")
        return false;
    }

    if (pincode1.length != 6)  {
        alert("Enter 6 Digits Pincode")
        return false;
    }
}

const searchFun = () =>{
    let filter = document.getElementById('location').value;
    let myTable = document.getElementById('t');
    let tr = myTable.getElementsByTagName('tr')

    for (var i = 0; i <tr.length; i++){
        let td = tr[i].getElementsByTagName('td')[3]
        
        if (td){
            let textvalue = td.textContent || td.innerHTML;

            if(textvalue.indexOf(filter) > -1){
                myTable.style.display = "block";
                tr[i].style.display = "";
            }else{
                tr[i].style.display = "none"; 
            }
        }
    }
}
/* $(document).on('submit', '#todo-form', function (e) {
    console.log('hello');
    e.preventDefault();
    $.ajax({
        type: 'POST',
        url: '/res/sss',
        data: {
            Ngouser: $("#check").val(),
            /* desBox: $("#desBox").val(),
            number: $("#number").val(),
            pincode: $("#pincode").val(),
            address: $("#address").val(),
            city: $("#city").val() *
        },
        success: function () {
            alert('saved');
        }
    })
}); */