<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement("select * from users where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	session.setAttribute("UserName",user);
	response.sendRedirect("userhome.jsp");
}
else
{
	%>
		<script>
		alert("Wrong UserName/Password,Try again");
	window.location="user.html";
	</script>
<%}
%>