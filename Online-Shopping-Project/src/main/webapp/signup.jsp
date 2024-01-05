<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="SignupAction.jsp" method="post">
      <input type="text" name="name" placeholder="Enter Name" required="required">
      <input type="email" name="email" placeholder="Enter Email" required="required">
      <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required="required">
      <select name="securityQuestion">
      <option value="What Was Your First Car?">What Was Your First Car?</option>
      <option value="What Is The Name Of Your First Pet?">What Is The Name Of Your First Pet?</option>
      <option value="What Elementary School Did You Attend?">What Elementary School Did You Attend?</option>
      <option value="What Is The Name Of The Town Where You Were Born?">What Is The Name Of The Town Where You Were Born?</option>
      </select>
      <input type="text" name="answer" placeholder="Enter Answer" required="required">
      <input type="password" name="password" placeholder="Enter Password" required="required">
      <input type="submit"value="Signup">
      
      
      
      </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <% 
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {%>
	  <h1>Successfully Registered !</h1>
  <%}%>
  <%if("invalid".equals(msg))
  {
  %>
	  <h1>Some Thing Went Wrong! Try Again !</h1>
  <%}%>
   
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>