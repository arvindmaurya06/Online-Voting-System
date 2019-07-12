<%@page import="model.User1"%>

<%

int select=Integer.parseInt(request.getParameter("select"));
HttpSession sess=request.getSession(false);
String email=(String)sess.getAttribute("email");

try{
User1 u1=new User1();
u1.setSelect(select);
u1.setEmail(email);

String y=u1.check_vote();

if(y==null)
{
	int i=u1.vote();
	if(i!=0)
	{
		response.sendRedirect("success.jsp");
	}
	else
	{
		response.sendRedirect("validate.jsp");
	}
}
else
{
	response.sendRedirect("validate3.jsp");
}
}

catch(Exception e)
{
	out.println(e);
}
%>