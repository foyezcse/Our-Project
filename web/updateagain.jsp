
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merienda+One&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
    <link rel="stylesheet" href="css/update.css">
    <link rel="stylesheet" href="css/style2.css">
    </head>
    <body>
           <nav class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">LoVo</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
      data-target="#navbarSupportedContent" aria-controls=
  "navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="projecttest.html">Home </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="suggestion.html">suggestion</a>
          </li>


        </ul>

      </div>
    </div>
    </nav>
        <%
            String host="jdbc:mysql://localhost:3306/newdatabase3";
                  Connection conn=null;
                    Statement stat=null;
                    ResultSet res=null;
                    PreparedStatement stmt=null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                   conn=DriverManager.getConnection(host,"root","");
                   
                    %>
    <div class="container">
      <div class="row">
          <div class="col-md-8 col-sm-8 col-xs-3">
            <form action="update" method="POST" class="form-container">
                <%
                stat=conn.createStatement();
                     String u =request.getParameter("u");
                    int no=Integer.parseInt(u);
                    String data = "select * from doctorinfo where id='"+no+"'";
                    res=stat.executeQuery(data);
                    while(res.next()){
                %>
             
              <input type="hidden" name="id"  value='<%=res.getString("id")%>'/>
  <div class="animate__animated animate__fadeInRight">
      
    <label for="exampleInputEmail1">Doctor_Name</label>
    <input type="text" name="doctor_name" value='<%=res.getString("doctor_name")%>'/>

  </div>
  <div class="animate__animated animate__fadeInLeft">
    <label for="exampleInputPassword1">Specialized_In</label>
    <input type="text" class="" name="specialized_in" value='<%=res.getString("specialized_in")%>'/>
  </div>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputPassword1">Chember</label>
    <input type="text" class="" name="chember" value='<%=res.getString("chember")%>'/>
  </div>
  <div class="animate__animated animate__fadeInLeft">
    <label for="exampleInputPassword1">Address</label>
    <input type="text" class="" name="Address"value='<%=res.getString("Address")%>'/>
  </div>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputPassword1">Contact</label>
    <input type="text" class="" name="contact" value='<%=res.getString("contact")%>'/>
  </div>
              <%
              }
              
              %>
              <button type="submit" class="btn btn-primary" >Update</button>
</form>
          </div>



      </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
