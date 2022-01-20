$(document).ready(function(){
    var temp = false;
   $('#sign_in').click(function(){
       
   var username = $('#user').val();
   var password = $('#pass').val();
   console.log(username);
   $.ajax({
        url: "loginController",
        type: 'POST',
        cache: false,
        data: {login:username,password:password},
        success: function (data) {
            if(data != null){
                console.log(data);
                window.location = "professeur.jsp";
            }else{
                if(temp === false){
                    temp = true;
                }
            }
        },error: function (textStatus) {
            console.log(textStatus);
        }
   });
   }); 
      
});
