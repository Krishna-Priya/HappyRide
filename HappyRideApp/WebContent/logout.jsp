<%
session.removeAttribute("user1");
session.invalidate();
%>
<jsp:forward page = "login.jsp"></jsp:forward>