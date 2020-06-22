function btnLoginClick() {
    var formLogin = document.getElementById("formLogin");
    formLogin.style.display = "block";
}

function btnRegisterClick() {
    var formLogin = document.getElementById("formRegister");
    formLogin.style.display = "block";
}

function closeLogin() {
    document.getElementById("formLogin").style.display = "none";

}
function closeRegister() {
    document.getElementById("formRegister").style.display = "none";
}


// When the user clicks on the password field, show the message box
function foCus() {
    document.getElementById("messagePass").style.display = "block";
}



// When the user starts to type something inside the password field
function keyUp() {
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");
    // Validate lowercase letters
    //var lowerCaseLetters = /[a-z]/g;
    //if (myInput.value.match(lowerCaseLetters)) {
    //    letter.classList.remove("invalid");
    //    letter.classList.add("valid");
    //    checkP = 0;
    //} else {
    //    letter.classList.remove("valid");
    //    letter.classList.add("invalid");
    //    checkP++;
    //}

    //// Validate capital letters
    //var upperCaseLetters = /[A-Z]/g;
    //if (myInput.value.match(upperCaseLetters)) {
    //    capital.classList.remove("invalid");
    //    capital.classList.add("valid");
    //    checkP--;
    //} else {
    //    capital.classList.remove("valid");
    //    capital.classList.add("invalid");

    //}

    //// Validate numbers
    //var numbers = /[0-9]/g;
    //if (myInput.value.match(numbers)) {
    //    number.classList.remove("invalid");
    //    number.classList.add("valid");
    //    checkP--;
    //} else {
    //    number.classList.remove("valid");
    //    number.classList.add("invalid");
    //}

    // Validate length
    if (myInput.value.length >= 8) {
        length.classList.remove("invalid");
        length.classList.add("valid");
        checkP--;
    } else {
        length.classList.remove("valid");
        length.classList.add("invalid");
    }
}
// When the user clicks outside of the password field, hide the message box
function out() {
        
        document.getElementById("messagePass").style.display = "block";

}
function checkPass() {
    var theP = document.getElementById("checkPass");
    var passag = document.getElementById("pswag")
    var pass = document.getElementById("psw");
    if (passag.value != pass.value) {
        theP.style.color = "red";
        
        theP.innerHTML = "Mật Khẩu Không Khớp!";
        passag.focus();
    } else {
        theP.style.color = "green";
        theP.innerHTML = "Mật Khẩu Khớp!";
    }
    theP.style.display = "block";
}

function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
function checkMail() {
    var email = document.getElementById("email");
    var theP = document.getElementById("checkEmail");
    if (!validateEmail(email.value)) {
        theP.style.color = "red";
        theP.style.display = "block";
        theP.innerHTML = "Sai định dang email";
        email.focus();
    }
    else {
        theP.style.display = "none";
    }
}

function checkPhone() {
    var phone = document.getElementById("phone");
    var theP = document.getElementById("errPhone");
    if (isNaN(phone.value)) {
        theP.style.display = "block";
        theP.innerHTML = "Bạn chỉ được nhập số";
        phone.focus();
    } 
    else { theP.style.display = "none"; }
    if (phone[0].value != '0') {
        theP.style.display = "block";
        theP.innerHTML = "Phải có số 0 ở đầu";
        phone.focus();
    }
}
