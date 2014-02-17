function validateRegForm()
{
var name=document.forms["registrationForm"]["user[name]"].value;
var email=document.forms["registrationForm"]["user[email]"].value;
var password1=document.forms["registrationForm"]["user[password]"].value;
var password2=document.forms["registrationForm"]["user[password_confirmation]"].value;


var atpos=email.indexOf("@");
var dotpos=email.lastIndexOf(".");

 if(name.length < 8 || name.length > 15){
   alert("Името трябва да е между 8 и 15 символа.");
     return false; 
  }

 if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
   {
    alert("Невалиден е-мейл адрес.");
    return false;
   }

 if(password1 != password2){
  alert("Паролите трябва да съвпадат.");
    return false; 
 }else{
  if(password1.length < 8 || password1.length > 20){
   alert("Паролата трябва да е между 8 и 20 символа.");
     return false; 
  }
 }
}