<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String mno=request.getParameter("mno");
String category=request.getParameter("category");
String skills=request.getParameter("skills");
int exp=Integer.parseInt(request.getParameter("exp"));
String addr=request.getParameter("addr");
String city=request.getParameter("city");
String state=request.getParameter("state");
PreparedStatement pst1=con.prepareStatement("select * from workers where username=?");
pst1.setString(1,user);
ResultSet rs=pst1.executeQuery();
if(rs.next())
{%>
<script>
alert("UserName already exists,please choose another username");
window.location="newuser.jsp";
</script>
<%}
else
{
PreparedStatement pst=con.prepareStatement("insert into workers values(?,?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,user);pst.setString(2,pwd);pst.setString(3,email);
pst.setString(4,mno);
pst.setString(5,category);pst.setString(6,skills);pst.setInt(7,exp);
pst.setString(8,addr);pst.setString(9,city);pst.setString(10,state);
pst.setInt(11,0);
int i=pst.executeUpdate();
%>
<script>
 alert("Registered Successfully,Please login to continue");
 window.location="worker.html";
 </script>
 <%
}
 %>