<%@include file="DBConn.jsp" %>
<%
String wid="WID"+(int)(Math.random()*10000);
String category=request.getParameter("category");
String desc=request.getParameter("desc");
int amount=0;
String date=request.getParameter("date");
String location=request.getParameter("location");
java.util.Date d=new java.util.Date();
String date1=d.getDate()+"/"+(d.getMonth()+1)+"/"+(d.getYear()+1900);
String user=(String)session.getAttribute("UserName");
int status=0;
PreparedStatement pst=con.prepareStatement("insert into works values(?,?,?,?,?,?,?,?,?)");
pst.setString(1,wid);pst.setString(2,desc);pst.setString(3,location);pst.setInt(4,amount);
pst.setString(5,date1);pst.setInt(6,0);pst.setString(7,user);pst.setString(8,category);
pst.setString(9,date);
int i=pst.executeUpdate();
%>
<script>
alert("Work details posted successfully");
window.location="userhome.jsp";
</script>