Atmos.url('/binding').define(function(request, response) {
	var data = request.bindObject('com.km.milonga.rhino.Player');
	response.setCookie("playerName", data.getPlayerName());
});


/*
 * test view for JSON data
 */
Atmos.url('/platform').define(function(request, response) {
	
	return {
				"platform" : "Atmos Code",
				"developer" : {
								"name" : "km",
								"company" : {
											  "companyName" : "SKP"
								},
								"age" : 33,
								"family" : ["wife", "father", "mother", "brother"]
				},
				"users" : ["Tom", "John"]
			}; 
});


/*
 * for login action
 */
Atmos.define('/login', function(request, response) {
	var userId = request.getParameter("userId");
	var password = request.getParameter("password");
	
	var loginResult = new Object();
	
	if (userId == 'abc@sk.com') {
		if (password != '1111') {
			loginResult.result = "failed";
		} else {
			loginResult.result = "succeeded";
			// Redirect
			response.setRedirect("/blog");
		}
	} else {
		loginResult.result = "not available";
	}
	
	// Cookie
	response.setCookie("mail", userId);
	
	// Session
	request.getSession().setAttribute("userId", userId);
	
	return loginResult;
});