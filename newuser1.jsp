<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String mno=request.getParameter("mno");
String addr=request.getParameter("addr");
String city=request.getParameter("city");
String state=request.getParameter("state");
PreparedStatement pst1=con.prepareStatement("select * from users where username=?");
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
PreparedStatement pst=con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
pst.setString(1,user);pst.setString(2,pwd);pst.setString(3,email);
pst.setString(4,mno);
pst.setString(5,addr);pst.setString(6,city);pst.setString(7,state);
int i=pst.executeUpdate();
%>
<script>
 alert("Registered Successfully,Please login to continue");
 window.location="user.html";
 </script>
 <%
}
 %>