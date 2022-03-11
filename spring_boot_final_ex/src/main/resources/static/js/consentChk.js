$(document).ready(function() {
    $("#submit").on('click',function(){
        var num = 0;
        if( $("#cb2").is(":checked") == true){
            num = 1;
        }
        if(num==1){
            location.href="/joinForm";
        }else{
            alert("개인정보 약관에 동의하셔야 합니다.");
        
        }
    });
    $("#cencle").on("click", function(){
        alert("동의하지 않으면 가입하실 수 없습니다");
        location.href='/';
    });
});