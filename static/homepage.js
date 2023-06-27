const searchFun = () =>{
    let filter = document.getElementById('location1').value;
    let myTable = document.getElementById('t');
    let tr = myTable.getElementsByTagName('tr')

    for (var i = 0; i <tr.length; i++){
        let td = tr[i].getElementsByTagName('td')[1]
        
        if (td){
            let textvalue = td.textContent || td.innerHTML;
            if(textvalue.indexOf(filter) > -1){
                myTable.style.display = "block";
                tr[i].style.display = "";
                box.style.width = "95%";

            }else{
                tr[i].style.display = "none"; 
            }
        }
    }
}

const searchFun1 = () =>{
    let filter1 = document.getElementById('location').value;
    let myTable = document.getElementById('t');
    let tr = myTable.getElementsByTagName('tr')

    for (var i = 0; i <tr.length; i++){
        let td1 = tr[i].getElementsByTagName('td')[3]
        
        if (td1){
            let textvalue1 = td1.textContent || td1.innerHTML;

            if(textvalue1.indexOf(filter1) > -1){
                myTable.style.display = "block";
                tr[i].style.display = "";
                box.style.width = "95%";

            }else{
                tr[i].style.display = "none"; 
            }
        }
    }
}