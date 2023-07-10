<%@include file="DBConn.jsp" %>
<%
String wid=request.getParameter("wid");
String user=(String)session.getAttribute("UserName");
PreparedStatement pst=con.prepareStatement("update accpted_requests set status=? where wid=? and customername=?");
pst.setInt(1,2);
pst.setString(2,wid);
pst.setString(3,user);
int i=pst.executeUpdate();
%>
<script>
alert("WorkID <%= wid %> is Rejected");
window.location="userhome.jsp" ;
</script>
