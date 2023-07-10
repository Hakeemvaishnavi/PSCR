<body bgcolor="#99cc99" >
<table align="Center" style="font-size:20px;" border=2 width=80%>
<tr><Th>WorkId</th><th>Description</th><th>Location</th><th>AmountPerDay</th><th>PostedDate</th><th>Category</th><th>DateOfWork</th></tr>

<%@include file="DBConn.jsp" %>
<%
String wid=request.getParameter("wid");
PreparedStatement pst=con.prepareStatement("select * from works where workid=?");
pst.setString(1,wid);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
  <tr>
  <th><%= rs.getString(1) %></th>  <th><%= rs.getString(2) %></th>  <th><%= rs.getString(3) %></th>
  <th><%= rs.getString(4) %></th>  <th><%= rs.getString(5) %></th>  <th><%= rs.getString(8) %></th>  <th><%= rs.getString(9) %></th></TR>
  <%
}
%>