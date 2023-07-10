<%@include file="DBConn.jsp" %>
<%
String wid=request.getParameter("wid");
int amount=Integer.parseInt(request.getParameter("amount"));
PreparedStatement pst1=con.prepareStatement("update accpted_requests set amount=? where wid=?");
pst1.setInt(1,amount);
pst1.setString(2,wid);
int i=pst1.executeUpdate();
%>
<script>
alert("Response sent to user")
window.location="workerhome.jsp"
</script>