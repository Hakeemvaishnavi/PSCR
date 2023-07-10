<%@include file="DBConn.jsp" %>
<%
String user=(String)session.getAttribute("UserName");
String workername=request.getParameter("workername");
String message=request.getParameter("message");
int rating=Integer.parseInt(request.getParameter("rating"));
PreparedStatement pst=con.prepareStatement("insert into feedback values(?,?,?,?)");
pst.setString(1,user);pst.setString(2,workername);pst.setString(3,message);
pst.setInt(4,rating);
int i=pst.executeUpdate();

PreparedStatement pst1=con.prepareStatement("update workers set rating=? where username=?");
pst1.setInt(1,rating);
pst1.setString(2,workername);
int j=pst1.executeUpdate();
%>
<script>
  alert("Feedback sent ");
  window.location="userhome.jsp";
</script>