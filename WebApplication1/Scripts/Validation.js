/// <reference path="Validation.js" />
function userValid() {
    var UserID, Fname, Lname, Age, Email;

    UserID = document.getElementById("TextBox4").value;
    Fname = document.getElementById("TextBox1").value;
    Lname = document.getElementById("TextBox2").value;
    Age = document.getElementById("TextBox3").value;
    Email = document.getElementById("TextBox5").value;

    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

    if (UserID == 0 && Fname == "" && Lname == '' && Age == 0 && Email == '') {

        alert("Enter All Fields");
        return false;

    }
    if (UserID == 0) {
        alert("Please Enter User ID");

        return false;
    }
    if (Fname == '') {

        alert("Please Enter First Name");

        return false;
    }
    if (Lname == '') {
        alert("Please Enter Last Name");

        return false;
    }
    
    if (Age == 0) {
        alert("Please Enter Last Name");

        return false;
    }

    if (Email == '') {
        alert("Email Address Is Required");

        return false;
    }
    if (Email != '') {


        if (!Email.match(emailExp)) {
            alert("Invalid Email Id");

            return false;
        }
    }
    return true;
}

