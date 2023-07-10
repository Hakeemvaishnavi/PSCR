<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement("select * from workers where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	String cate=rs.getString(5);
	session.setAttribute("CATE",cate);
	session.setAttribute("UserName",user);
	response.sendRedirect("workerhome.jsp");
}
else
{
	%>
		<script>
		alert("Wrong UserName/Password,Try again");
	window.location="worker.html";
	</script>
<%}
%>