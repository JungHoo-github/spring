/**
 * timer
 */
 
var SetTime=600;
var plusTime;
let tid;	// clearInterval 을 위한 변수
var m;
function msg_time() {
	m = Math.floor(SetTime / 60) + "분" + (SetTime % 60) + "초";
	var msg =  m ;
	
	document.all.ViewTimer.innerHTML = msg;
	SetTime--;
	if(SetTime < 0) {
		clearInterval(tid);
		alert("종료");
	}
}

function msg_time2() {
	m = Math.floor(SetTime / 60) + "분" + (SetTime % 60) + "초";
	var msg =  m ;
	
	document.all.ViewTimer.innerHTML = msg;
}



$(function(){
	$('#timer_hidden').on('click',function(){
		SetTime;
		tid=setInterval('msg_time2()')
	});
	
	$('#timer_start').on('click',function(){
		clearInterval(tid);
		tid=setInterval('msg_time()', 1000)
	});
	
	$('#timer_stop').on('click',function(){
		clearInterval(tid);
	})
	
	$('#timer_reset').on('click', function(){
		SetTime = 600;
		clearInterval(tid);
		tid=setInterval('msg_time2()', 1000)
	});
	
	$('#five_minute').on('click', function(){
		plusTime = 300;
		SetTime += plusTime;
	});
	
	$('#ten_minute').on('click', function(){
		plusTime = 600;
		SetTime += plusTime;
	});
	
	$('#fifteen_minute').on('click', function(){
		plusTime = 900;
		SetTime += plusTime;
	});
	
	$('#thirty_minute').on('click', function(){
		plusTime = 1800;
		SetTime += plusTime;
	});
	
	$('#one_hour').on('click', function(){
		plusTime = 3600;
		SetTime += plusTime;
	});
	
	$('#two_hour').on('click', function(){
		plusTime = 7200;
		SetTime += plusTime;
	});
});

