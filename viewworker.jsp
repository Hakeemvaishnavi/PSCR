<body bgcolor="#99cc99" >
<table align="Center" style="font-size:20px;" border=2 width=80%>
<tr><Th>WorkerName</th><th>EmailId</th><th>MobileNumber</th><th>Category</th><th>Skills</th><th>Experience</th><th>address</th><th>City</th><th>State</th><th>Rating</th></tr>

<%@include file="DBConn.jsp" %>
<%
String str1="";
String wid=request.getParameter("wid");
PreparedStatement pst=con.prepareStatement("select * from workers where username=?");
pst.setString(1,wid);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	String str=rs.getString(11);
	int rating=Integer.parseInt(str);
	if(rating>3)
		str1="Skilled";
	else
		str1="SemiSkilled";

%>
  <tr>
  <th><%= rs.getString(1) %></th>    <th><%= rs.getString(3) %></th>
  <th><%= rs.getString(4) %></th>  <th><%= rs.getString(5) %></th>  <th><%= rs.getString(6) %></th>  <th><%= rs.getString(7) %></th><th><%= rs.getString(8) %></th><th><%= rs.getString(9) %></th>
<th><%= rs.getString(10) %><th><%= rs.getString(11) %></th></th>  
  </TR>
  <%
}
%>
<tr><Th colspan=10>Worker Type: <%= str1 %></th></tr>
</table>