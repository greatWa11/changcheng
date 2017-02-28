
jQuery(document).ready(function() {

    $('.page-container').submit(function(){
        var username = $(this).find('.username').val();
        var password = $(this).find('.password').val();
        
        //后台验证
        if(username !== '' && password !== ''){
        	 $.ajax({
                 type: "post",
                 url: "",
                 data: {username:username, password:password},
                 dataType: "json",
                 success: function(data){
                	 window.location.href = "";
                 }
             });
        }
     
        if(username == '') {
            $(this).find('.error').fadeOut('fast', function(){
                $(this).css('top', '27px');
            });
            $(this).find('.error').fadeIn('fast', function(){
                $(this).parent().find('.username').focus();
            });
            return false;
        }
		
        if(password == '') {
            $(this).find('.error').fadeOut('fast', function(){
                $(this).css('top', '96px');
            });
            $(this).find('.error').fadeIn('fast', function(){
                $(this).parent().find('.password').focus();
            });
            return false;
        }
       
    });

    $('.page-container form .username, .page-container form .password').keyup(function(){
        $(this).parent().find('.error').fadeOut('fast');
    });

});
