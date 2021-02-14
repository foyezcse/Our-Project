
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suggestion</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merienda+One&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/style2.css">
    </head>
    <body>
            <nav class="navbar navbar-expand-lg navbar-expand-md navbar-light fixed-top">
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
            <a class="nav-link" href="index.html">Home </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="categories.jsp">categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contactus.jsp">Contact</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="suggestion.jsp">suggestion</a>
          </li>


        </ul>

      </div>
    </div>
    </nav>
    <div class="container">
      <div class="row">
       
          <div class="col-md-12 col-sm-11 col-11 col-xs-8">
            <form action="suconnection"class="form-container">
                <h2 class="animate__animated animate__fadeIn" style="animation-delay: 1s">Suggest Us</h2>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputEmail1">Your Name</label>
    <input type="text" class="" name="username">

  </div>
  <div class="animate__animated animate__fadeInLeft">
    <label for="exampleInputPassword1">Your Email</label>
    <input type="email" class="" name="email">
  </div>
  <div class="animate__animated animate__fadeInRight">
    <label for="exampleInputPassword1">Suggestion</label>
    <input type="text" class="" name="suggestion">
  </div>

              <button type="submit" value="submit" class="btn btn-primary animate__animated animate__zoomIn" style="animation-delay: 1.5s">Submit</button>
</form>
          </div>



      </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
