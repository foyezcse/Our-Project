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
         <link rel="stylesheet" href="css/header.css">
         <link rel="stylesheet" href="css/header1.css">
         
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>

    <nav class="navbar navbar-expand-lg  navbar-light fixed-top  ">
    <div class="container-fluid">
      <a id="navbar-brand" href="#"<p><span>A</span>utism <span>A</span>ssistent</p></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
      data-target="#navbarSupportedContent" aria-controls=
  "navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="catpage.html">CATEGORIES</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="suggestion.html">Suggestion</a>
          </li>


        </ul>

      </div>
    </div>
    </nav>
        <body>
            
       
       <div class="container">
      
 <h1 id="section-tittle">Do<span>ct</span>or</h1>
      <form class="animate__animated animate__zoomIn"style="animation-delay: 1s" name="check" action="" method="POST">

          <select id="q" name="q" >
              <option>Dental</option>
              <option>Medicine</option>
              <option>Allergy</option>
              <option>Asthma</option>
              <option>Vision</option>
              <option>ENT</option>
              <option>Urology</option>
              <option>Neurology</option>
              <option>Occupational Therapy</option>
              <option>Speech Therapy</option>
              <option>Cardiology</option>
              <option>Cancer</option>
              <option>Orthopedic</option>
              <option>Brain</option>
              <option>Gastrology</option>
              <option>Kidney</option>
              <option>Liver</option>
              <option>Nephrology</option>
              <option>Nutrition</option>
              <option>Gynecology</option>
          </select>

          <input class="btn btn-danger" type="submit" value="Search Specialist " name="q" id="q" />
      </form>



    <div class="table-responsive mt-5">
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

 

  	<!-- Footer -->
  	<section id="footer">
  		<div class="footer container1">
  			<div id="navbar-brand"><h1><span>A</span>utism <span>A</span>ssistant</h1></div>
  			<h2>A system for the special autistic people</h2>
  			<div class="social-icon">
  				<div class="social-item">
  					<a href="#"><img src="./images/facebook.png"></a>
  				</div>
  				<div class="social-item">
  					<a href="#"><img src="./images/instagram.png"></a>
  				</div>
  				<div class="social-item">
  					<a href="#"><img src="./images/twitter.png"></a>
  				</div>
  				<div class="social-item">
  					<a href="#"><img src="./images/whatsapp.png"></a>
  				</div>
  			</div>
  			<p>Copyrigt © 2020. All rights reserved</p>
  		</div>
  	</section>
      





    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
</html>
