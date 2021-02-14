<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suggestion view</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merienda+One&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
    </head>
    <body>
        
       
        <div class="container mt-5">
            
            <h3 class="text-center">Suggestion</h3>
             
            <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover text-center">
            <thead>
                <tr class="bg-info text-white">
                    <th>Serial no</th>
                      <th>Name</th>
                    <th>Email_Address</th>
                    <th>Suggestion</th>
                    <th>Action</th>
                </tr>
            </thead>
            
            
            <tbody>
                <%String host="jdbc:mysql://localhost:3306/newdatabase";
                    Connection conn=null;
                    Statement stat=null;
                    ResultSet res=null;
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=DriverManager.getConnection(host,"root","");
                    stat=conn.createStatement();
                    String data="select * from suggestion4";
                    res=stat.executeQuery(data);
                    while(res.next()){
              
                    %>
                    
                    <tr>
                        <td><%=res.getString("serial_no")%></td>
                        <td><%=res.getString("username")%></td>
                        <td><%=res.getString("email")%></td>
                        <td><%=res.getString("suggestion")%></td>
                        <td class="text-center">
                            
                             <a class="btn btn-danger" href='delete.jsp?d=<%=res.getString("serial_no")%>' role="button">Delete</a>
                            
                         
                        </td>
                        
                        
                    </tr>
                    
                    
                <%
                    }
                %>
                
                
            </tbody>
        </table>
            </div>
                 </div>
                
               
               
        
        
        
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
