

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
    <div class="container">
      <div class="row">
          <div class="col-md-8 col-sm-8 col-xs-3">
            <form action="updateconnection" method="POST" class="form-container">
              <h2>Add Information</h2>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputEmail1">Doctor_Name</label>
    <input type="text" class="" name="doctor_name" required>

  </div>
  <div class="animate__animated animate__fadeInLeft">
    <label for="exampleInputPassword1">Specialized_In</label>
    <input type="text" class="" name="specialized_in" required>
  </div>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputPassword1">Chember</label>
    <input type="text" class="" name="chember" required>
  </div>
  <div class="animate__animated animate__fadeInLeft">
    <label for="exampleInputPassword1">Address</label>
    <input type="text" class="" name="Address"required>
  </div>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputPassword1">Contact</label>
    <input type="text" class="" name="contact" required>
  </div>

              <button type="submit" class="btn btn-primary" value="submit">Submit</button>
</form>
          </div>



      </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
