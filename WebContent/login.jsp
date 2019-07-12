<%@page import="model.User"%>

<html>
<body>

<%
String email=request.getParameter("email");
String password=request.getParameter("password");

HttpSession session1=request.getSession();
session1.setAttribute("email", email);
try
{
	User u=new User();
	u.setEmail(email);
	u.setPassword(password);
	
	boolean a=u.login();
	
	if(a==true)
	{
		response.sendRedirect("selection_of_candidate.jsp");
	}
	else
	{
		response.sendRedirect("validate2.jsp");
	}

	
}
catch(Exception e)
{
	System.out.println(e);
}


%>

</body>
</html>