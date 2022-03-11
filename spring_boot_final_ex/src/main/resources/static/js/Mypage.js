/*/**
 *  
 */
 
 let Btn = document.getElementById("deleteIdForm");

 
 Btn.addEventListener("submit",function(){	
	const pwd = $('#InputPassword').val();
	const chkpwd = $('#checkPwd').val();
	if(chkpwd == pwd){	
		alert("삭제 하였습니다.");
		return true;
	}else{
		alert('비밀번호가 다릅니다.');
		event.preventDefault();
		return false;
	}
})