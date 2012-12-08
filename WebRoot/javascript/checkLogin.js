
var login_xhr = new XMLHttpRequest();



function checkLoginInput(){
	var user = document.getElementById("uname").value;
	var passwd = document.getElementById("passwd").value;
	var queryString = 'uname="'+user+"'&passwd="+passwd+'"';
	login_xhr.open("POST", "userLogin.jsp?uname="+user+"&passwd="+passwd, true);
	login_xhr.setRequestHeader("Content-Type","application/x-www-form-u-lencoded");
	login_xhr.send(null);
	return false;
}

login_xhr.onreadystatechange=function(){
	
	if(login_xhr.readyState == 4){
		var response = login_xhr.responseText;
		response = response.trim(response);
		if(response == 1){
			window.location.replace("user.jsp");
		}else{
			//alert("There is not match for such account. Please make sure your password is correct.");
			alert(response);
			return false;
		}
		
	}
};

function trim(s) { 
    s = s.replace(/(^\s*)|(\s*$)/gi,"");
    s = s.replace(/[ ]{2,}/gi," "); 
    s = s.replace(/\n /,"\n"); return s;
}

function clearFields(){
	document.myForm.reset();
	
}
