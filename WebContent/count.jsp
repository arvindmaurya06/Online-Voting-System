<%@page import="model.User1" %>
<%
int a=0,b=0,c=0,d=0,e=0,f=0,g=0,h=0;
						
User1 u=new User1();

try 
{
int[] C=u.count();
for(int i=0;i<C.length;i++)
{
	if(C[i]==1)
	{
		a=a+1;
	}
	else if(C[i]==2)
	{
		b=b+1;
	}
	else if(C[i]==3)
	{
		c=c+1;
	}
	else if(C[i]==4)
	{
		d=d+1;
	}
	else if(C[i]==5)
	{
		e=e+1;
	}
	else if(C[i]==6)
	{
		f=f+1;
	}
	else if(C[i]==7)
	{
		g=g+1;
	}
	else if(C[i]==8)
	{
		h=h+1;
	}
}
	out.println("CSK......."+a+"<br>");
	out.println("SRH......."+b+"<br>");
	out.println("MI........"+c+"<br>");
	out.println("DD........"+d+"<br>");
	out.println("RCB......."+e+"<br>");
	out.println("PNJ......."+f+"<br>");
	out.println("RR........"+g+"<br>");
	out.println("KKR......."+h+"<br>");
}
catch(Exception e1)
{
	out.println(e1);
}


%>
<br><br><br><hr>
<br><br>
<a href="home.jsp">Home page</a>
