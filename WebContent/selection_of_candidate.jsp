<html>
<head>

	<title></title>
	<link rel="stylesheet" type="text/css" href="selection_of_candidate.css">
</head>
<body>
<header><h1>hhhhhh</h1>
</header>

<footer class="footer1">
<%
HttpSession sess=request.getSession(false);
String s=(String)sess.getAttribute("email");
sess.setAttribute("email", s);
%>
<div class="main_div">
 <form action="voting.jsp" method="post">
  <div class="logo_div">

	<div class="outer_div">
		<div class="csk_image"></div>
		<div class="inner_div2">
			<h1>Chennai Super Kings</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="1">
		</div>	
  	</div>

	<div class="outer_div">
		<div class="srh"></div>
		<div class="inner_div2">
			<h1>Sunrisers Hyderabad</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="2">
		</div>
	</div>

	<div class="outer_div">
		<div class="mi"></div>
		<div class="inner_div2">
			<h1>Mumbai Indians</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="3">
		</div>
	</div>

	<div class="outer_div">
		<div class="dd"></div>
		<div class="inner_div2">
			<h1>Delhi Daredevils</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="4">
		</div>
	</div>

	<div class="outer_div">
		<div class="rcb"></div>
		<div class="inner_div2">
			<h1>Royal Challengers Bangalore</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="5">
		</div>	
    </div>

	<div class="outer_div">
		<div class="pnj"></div>
		<div class="inner_div2">
			<h1>Kings XI Punjab</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="6">
		</div>
	</div>

	<div class="outer_div">
		<div class="rr"></div>
		<div class="inner_div2">
			<h1>Rajasthan Royals</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="7">
		</div>
	</div>

	<div class="outer_div">
		<div class="kkr"></div>
		<div class="inner_div2">
			<h1>Kolkata Knight Riders</h1>
		</div>
		<div class="vote_button">
		<input type="radio" name="select" class="vote" value="8">
		</div>
	</div>

	 <div class="submit_button">
		<input type="submit" value="Submit">
	</div>
	
  </div>


</div>
</form>
</footer>
</body>
</html>