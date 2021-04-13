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
<h2><i>Search Bar</i></h2>
<form action="UserSearch.jsp" method ="post">
<div class="container">
  <div class="col-auto">
    <label for="search" class="visually-hidden">Search User</label>
    <input type="text" class="form-control" name="search" placeholder="Search">
  </div>
  <br>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary mb-3">Search</button>
  </div>
</form>
</div>
</center>

    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3307/users","root","K9039680300p");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from new_table;");
    %>
    <table border=1 align=center style="text-align:center">
      <thead>
          <tr>
             <th>ID</th>
             <th>First Name</th>
             <th>Last Name</th>
             <th>Age</th>
             <th>Email</th>
             <th>Location</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("id") %></td>
                <td><%=rs.getString("first_name") %></td>
                <td><%=rs.getString("last_name") %></td>
                <td><%=rs.getString("age") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("location") %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%
    st.close();
    con.close();
    }
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }%>
<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
</body>
</html>






