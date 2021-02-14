
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="css/admin.css">
    </head>
    <body>
         <div class="row no-gutters">
        <div class="col-lg-2 col-md-2 col-sm-2 col-2 sidbar ">
          <a href="#" class="Nav-brand text-center d-block mx-auto text-white py-3 mb-4 bottom-border">Admin</a>
          <ul class="navbar-nav flex-column mt-4">
            <li class="nav-item active"> <a href="Adminview.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-home text-white mx-2"></i>Home</a>
                <li class="nav-item"> <a href="Adminview.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-table mx-2"></i>View Information</a>
                    <li class="nav-item"> <a href="AdminAddpage.jsp" class="nav-link text-white p-3 mb-2"><i class="fa fa-user-plus mx-2" aria-hidden="true"></i>Add Information</a>
                        <li class="nav-item"> <a href="AdminUpdate.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-sync-alt mx-2"></i>Update Information</a>
                          <li class="nav-item"> <a href="AdminDelte.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-user-minus mx-2"></i>Delete Information</a>
                            <li class="nav-item"> <a href="Adminsuggestion.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-envelope-open-text mx-2"></i>View Suggestion</a>
                                <li class="nav-item"> <a href="logout.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-sign-out-alt mx-2"></i>Logout</a>


            </li>
          </ul>

        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-10 ">
          <div class="nav-bar col-lg-12 text-right">

            <a href="#"class="btn btn-primary">Logout</a>

              </div>
            <div class="container mt-2 mb-2">
            
            <h3 class="text-center">Doctor Information</h3>
             <div class="row justify-content-around">
       <div class="col-md-6 ">
       <form action="" method="get">
                    <input type="text" class="form-control" name="q" placeholder="search here"/>
                    <br>
                    <div class="text-center">
          <input class="btn btn-danger" type="submit" value="Search" name="q" id="q" />
          </div>
      </form>
       </div>
          </div>
            
            <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover text-center">
            <thead>
                <tr class="bg-info text-white">
                      <th>Doctor ID</th>
                    <th>Doctor_Name</th>
                    <th>Specialized_In</th>
                    <th>Chember</th>
                    <th>Address</th>
                    <th>Contact</th>
                   
                </tr>
            </thead>
            
            
            <tbody>
                <%
                    String host="jdbc:mysql://localhost:3306/newdatabase3";
                    Connection conn=null;
                    Statement stat=null;
                    ResultSet res=null;
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=DriverManager.getConnection(host,"root","");
                    stat=conn.createStatement();
                    String query = request.getParameter("q");
                    String data;
                    if(query !=null){
                       data="select *from doctorinfo where doctor_name like '%"+query+"%' or specialized_in like '%"+query+"%'or chember like '%"+query+"%'or Address like '%"+query+"%' or contact like '%"+query+"%'"; 
                    }else{
                   data="select *from doctorinfo";
                    }
                    res=stat.executeQuery(data);
                    while(res.next()){
                    %>
                    
                    <tr>
                        <td><%=res.getString("id")%></td>
                        <td><%=res.getString("doctor_name")%></td>
                        <td><%=res.getString("specialized_in")%></td>
                        <td><%=res.getString("chember")%></td>
                        <td><%=res.getString("Address")%></td>
                        <td><%=res.getString("contact")%></td>
                        
                        
                        
                    </tr>
                    
                    
                <%
                    }
                %>
                
                
            </tbody>
        </table>
            </div>
                 </div>

        </div>

                    </div>





  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
    </body>
</html>
