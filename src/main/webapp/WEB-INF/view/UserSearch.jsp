<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Users</title>
    <%@page import="java.sql.*"%>
</head>

<body>
<center>
<h1>Search Result</h1>
<small>Here is name with the desired result</small>
<div class="container"></div>
<table class="table table-striped" border="1">
<%
String value=request.getParameter("search");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/users ","root", "K9039680300p");
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery("select * from new_table where first_name='"+value+"'");
if(rs.next()){ 
    %>
    <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Age</th>
      <th scope="col">Email</th>
      <th scope="col">Location</th>
    </tr>
  </thead>
<tbody>
    <tr>
      <td><%=rs.getString("id")%></td>
      <td><%=rs.getString("first_name")%></td>
      <td><%=rs.getString("last_name")%></td>
      <td><%=rs.getInt("age")%></td>
      <td><%=rs.getString("email")%></td>
      <td><%=rs.getString("location")%></td>
    </tr>
     </tbody>
      <%
}
%>
</table>
</center>
</div>
</body>
</html>





