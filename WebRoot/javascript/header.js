function getX(){
		return event.clientX;
}
function getY(){
	return event.clientY;
}


function popup(thisID) {
       
	   document.getElementById(thisID).style.visibility = 'visible';
   } 
   
function popoff(thisID){

	 document.getElementById(thisID).style.visibility = 'hidden';

}
   
 function popup_login(){
	//document.write(getX());
	document.getElementById("login").style.top =(getY() + 6)+"px";
	document.getElementById("login").style.left = (getX() - 150)+"px";
	popup('login');
 }
   
function popoff_login(){
	popoff('login');

}

function showRegisterPage(){
	var indexdiv = document.getElementById("index-div");
	indexdiv.innerHTML = '<form name="regForm" onsubmit="return checkRegister();"><div class="main"><h1 align="center" class="fontstyle">REGISTER NOW!</h1><br><br><table class="table"><tr><td class="fontstyle">Email:</td><td><input id="email" type="text" onkeyup="return checkEmail();"></td></tr><tr><td class="fontstyle">First:</td><td><input id="first" name="first" type="text"></td></tr><tr><td class="fontstyle">Last:</td><td><input id="last" name="last" type="text"></td></tr><tr><td class="fontstyle">Password:</td><td><input id="passwordReg" name="password" type="password" onkeyup="return checkPassword();"></td></tr><tr><td class="fontstyle">Confirm Password:</td><td><input id="confirmPass" name="confirmPass" type="text" onkeyup="return checkConfirmPassword();"></td></tr><tr><td class="fontstyle"><input type="submit" value="submit"></td></tr></table></div></form>';

}