

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
            <li class="nav-item active" id="active"> <a href="#" class="nav-link text-white p-3 mb-2"><i class="fas fa-home text-white mx-2"></i>Home</a>
                <li class="nav-item"> <a href="Adminview.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-table mx-2"></i>View Information</a>
                    <li class="nav-item"> <a href="update.jsp" class="nav-link text-white p-3 mb-2"><i class="fa fa-user-plus mx-2" aria-hidden="true"></i>Add Information</a>
                        <li class="nav-item"> <a href="" class="nav-link text-white p-3 mb-2"><i class="fas fa-sync-alt mx-2"></i>Update Information</a>
                          <li class="nav-item"> <a href="#" class="nav-link text-white p-3 mb-2"><i class="fas fa-user-minus mx-2"></i>Delete Information</a>
                            <li class="nav-item"> <a href="Adminsuggestion.jsp" class="nav-link text-white p-3 mb-2"><i class="fas fa-envelope-open-text mx-2"></i>View Suggestion</a>
                                <li class="nav-item"> <a href="#" class="nav-link text-white p-3 mb-2"><i class="fas fa-sign-out-alt mx-2"></i>Logout</a>


            </li>
          </ul>

        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-10 ">
          <div class="nav-bar col-lg-12 text-right">

            <a href="index.html"class="btn btn-primary">Logout</a>

              </div>

        </div>

                    </div>





  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
    </body>
</html>
