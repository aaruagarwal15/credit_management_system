window.onload = function(){   
    
    
    var heading = document.getElementById("head");
    
    var table = this.document.getElementById('ulist');
    var col = table.rows[2].cells.length;
    
    let status = 0;
  
    for (var i = 0; i < table.rows.length; i++) 
    {
        if (status == 0){
        table.rows[i].onclick = function() {
            
            var cellVal = this.cells[col-1].innerHTML;
            var credits = prompt("How many credits you want to transfer ?");
            if (credits == null || credits == " " || credits == "")
            {
                alert("It can't be empty");
            }
            else if (credits != null) {
                if( credits == ""){
                    alert("It can't be empty");
                }
                
                else if (parseFloat(credits) > parseFloat(cellVal)){
                    
                    alert("Enter valid number of credits");
                }
                else if(parseFloat(credits) <= parseFloat(cellVal)){
                    
                    table.deleteRow(this.rowIndex);
                    heading.innerHTML = "Select the user to transfer credits";
                    status = 1;
                    newWindow(parseFloat(credits), this.cells[0].innerText);
                    
                }
            }
        }
    } }
   

function newWindow(cred, from){
    for(j =0 ; j< table.rows.length ;j++ ){
        table.rows[j].onclick = function(){
            var to = this.cells[0].innerText;
            $.post("conn1.php", {f: from, t: to, c: cred  } ,function(data, status){
                console.log("Status: " + status);
                window.location = "conn.php";
              });
            
        }
    }
}
}