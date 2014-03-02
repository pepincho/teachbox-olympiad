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

function validateOpenCreateForm(){
  var name = document.forms["openCreateForm"]["open_group[name]"].value;

  if (name.length < 5 && name.length >= 70){
      alert("Името трябва да е между 5 и 70 символа.");
      return false; 
  }
}

function validateCourseCreateForm(){
  var name = document.forms["courseCreateForm"]["course[name]"].value;

if (name.length < 5 && name.length >= 70){
      alert("Името трябва да е между 5 и 70 символа.");
      return false; 
  }
}

function validateClosedCreateForm(){
  var name = document.forms["closedCreateForm"]["closed_group[name]"].value;

  if (name.length < 5 && name.length >= 70){
      alert("Името трябва да е между 5 и 70 символа.");
      return false; 
  }
}

function validateQuickCreateForm(){
  var topic = document.forms["quickCreateForm"]["quick_question[topic]"].value;
  var question = document.forms["quickCreateForm"]["quick_question[question]"].value;

  if (topic.length < 5 &&  topic.length >= 20){
      alert("Темата трябва да е между 5 и 20 символа.");
      return false; 
  }

   if (question.length < 5 ){
      alert("Въпросът трябва да е над 5 символа.");
      return false; 
  }
}