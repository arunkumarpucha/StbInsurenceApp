// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-datetimepicker
//= require bootstrap-datepicker
//= require_tree .


$(document).ready(function(){
          
    
     //validation for the form of subscriber new form
     $("#new_subscriber").on('submit',function(){
      
    
      var sname= $("#subscriber_name").val()

      var nameregex=/[a-zA-Z]+/ ;
      
      var semailid= $("#subscriber_email_id").val()
      
      var emailregex = /[a-zA-Z0-9_]+\@[a-zA-Z0-9]+\.(com|org|co.in|COM|ORG|CO.IN)/ ;

      var smobileno= $("#subscriber_mobile_no").val()

      var phonepattern= /[0-9]+/;

      var doorno= $("#door_no").val()

      var streetname1 = $("#street_one").val()

      var streetname2 = $("#street_two").val()

      var city = $("#city").val()

      var state = $("state").val()

      var country = $("country").val()


    if (validateName()&&validateMobile()&&validateEmail()&&validateOthers())
    {  
      $("#new_subscriber").submit();
      return true
    }else{
      alert("failure validation");
      return false
    }

    function validateName(){
        if(!(sname.match(nameregex))){
        $("#subscriber_name").focus();
        alert("subscriber_name char checking")
        $("#namediv").text("name should be characters only ");
         return false
       }else if(sname==""){
         $("#namediv").text("name cannot be left blank");
         return false
        
       }else{
        $("#namediv").text("");
        return true
       }

    }

    function validateMobile(){

        if(!(smobileno.match(phonepattern))){
       
        $("#subscriber_mobile_no").focus();
        alert("subscriber_phone checking")
        $("#phonediv").text("mobile should be of numbers only and of 10 digits ");
         return false
       }else if(smobileno.length==10){
        $("#phonediv").text("");
        return true
       }else if(smobileno==""){
         $("#phonediv").text("mobileno cannot be left blank");
        return false
       }else{
        return true
       }

   }

   function validateEmail(){
     if (!semailid.match(emailregex)){
      
        $("#subscriber_email_id").focus();
        alert("subscriber_email is in wrong format")
        $("#emaildiv").text("pls enter proper mail ");
         return false
      }else{
         $("#emaildiv").text("");
        return true
      }

   }

   function validateOthers(){
      if (doorno ==""){
        $("#doordiv").text("door_no cannot be left blank")
        return false
      }else if(streetname1 ==""){
        $("#doordiv").text("")
        $("#street1div").text("streetname1 cannot be left blank")
        return false
      }else if(streetname2 ==""){
        $("#street1div").text("")
        $("#street2div").text("streetname2 cannot be left blank")
        return false
      }else if(city ==""){
        $("#street2div").text("")
        $("#citydiv").text("city cannot be left blank")
        return false
      }else if(state ==""){
         $("#citydiv").text("")
        $("#statediv").text("state cannot be left blank")
        return false
      }else if(country ==""){
        $("#statediv").text("")
        $("#countrydiv").text("country cannot be left blank")
        return false
      }else{
        $("#doordiv").text("")
        $("#street1div").text("")
        $("#street2div").text("")
         $("#citydiv").text("")
         $("#statediv").text("")
         $("#countrydiv").text("")
         return true
      }
   }


      
      

     });


 
     });

