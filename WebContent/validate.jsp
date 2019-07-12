<%@page import="model.User"%>
<html>
<body>
<%@page import="model.User.*" %>
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String password=request.getParameter("password");

try
{
	User u=new User();
	u.setFirstName(firstName);
	u.setLastName(lastName);
	u.setContact(contact);
	u.setEmail(email);
	u.setPassword(password);
	
	int b=u.addUser();
	if(b==1)
	{
		response.sendRedirect("validate1.jsp");
	}
	else
	{
		response.sendRedirect("Error.jsp");
	}
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>

</body>
</html>