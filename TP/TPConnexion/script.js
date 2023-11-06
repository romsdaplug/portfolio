function check() {
	var username = document.getElementById('usernameInput').value;
	var password = document.getElementById('passwordInput').value;
	if (username == "admin" && password == "admin") {
	window.location.href = "page1.html";
	} else {
		window.location.href = "page2.html";
	}
}