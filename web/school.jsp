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
         
         <link rel="stylesheet" href="css/style.css">
         <link rel="stylesheet" href="css/school.css">
         
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

<div class="container2">

<h1>School</h1>

    <div class="row row-cols-1 row-cols-md-2 mx-5 g-4">
    <div class="col mb-5">
      <div class="card p-4">
        <img src="images/sgc.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">School for Gifted Children (SGC)</br>(A school for Children with Special Needs)</h5>
          <p class="card-text">

<span>Address: House – 6/9, Block-E, Lalmatia, Dhaka-1207</span>

School for Gifted Children (SGC) is the core component of Special Schooling Project grounded by Tauri Foundation. It is a special needs school aimed at facilitating learning of children with special needs and advance their rights in the community. Tauri Foundation operates two branches of SGC – one at its head office in Lalmatia, Dhaka and the other in Rajshahi.

SGC provides special schooling for children with Autism, Cerebral Palsy and Down Syndrome. It follows an effective and appropriate curriculum and teachers design a goal plan for each student depends upon individual needs and abilities.</p>
        <a href="#" class="btn btn-primary">More Info</a>
        </div>
      </div>
    </div>
    <div class="col mb-5">
      <div class="card p-4">
        <img src="images/swac.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Society for the Welfare of Autistic Children(SWAC)</h5>
          <p class="card-text">
            <span>Address: 70/Ka, Pisciculture, shyamoli, Dhaka</span>
            `Society for the Welfare of Autistic Children’ (SWAC) was formed by a group of dedicated parents of children with autism in 2000 with the aim of educating, training and rehabilitating children, adolescents and adults with autism to develop and perform to their fullest potential, making them independent and active members of the society, enabling them to integrate and contribute to the mainstream of national development and establishing their rights as citizens of this country.  SWAC is a pioneer, non–profit, non–government, non-political and voluntary organization rendering services to individuals with autism and their families in order to improve the quality of their lives for over thirteen years.
          </p>
            <a href="#" class="btn btn-primary">More Info</a>
        </div>
      </div>
    </div>
    <div class="col mt-5">
      <div class="card p-4">
        <img src="images/beautiful.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Beautiful Mind Autism School</h5>
          <p class="card-text">
            <span>Address: Plot # 1145, Road # 6/A Dolipara, Sector # 5, Uttara Dhaka -1230</span>
            Beautiful Mind is a sensory immersion school for children with autism, pdd-nos, global developmental delay and sensory integration issues.

  The goal of Beautiful Mind is to keep expanding, keep improving, keep learning so the best educational environment and experience is provided to local children with autism. Some of parents aim to have their child mainstreamed into public school and simply need a little longer to prepare their child we can do that! Some of parents want to provide their child with a completely alternative education and we can do that!
          </p>
            <a href="#" class="btn btn-primary">More Info</a>
        </div>
      </div>
    </div>
    <div class="col mt-5">
      <div class="card p-4">
        <img src="images/acdfb.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">ACDFB Autism School & Rehabilitation</h5>
          <p class="card-text">
            <span>Address: House no 74, Lane -3, Block – E, Mirpur-12, Dhaka -1216</span>
            Autistic Children Development Foundation Bangladesh (ACDFB) Registered with the Govt. of the People’s Republic of Bangladesh Ministry of welfare Dept.of social services Reg No.2955/CTG.we are the pioneer organization in Bangladesh in the field of autism. We have very few and don’t have quality of training & Rehabilitation center for children with autism.
             So in the year 2008 ACDFB Established Autism School & Rehabilitation center for children with autism. its inception has made several intervention in these regards. health assistance and training as well as support.
          </p>
              <a href="#" class="btn btn-primary">More Info</a>
        </div>
      </div>
    </div>
  </div>
</div>

  	<!-- Footer -->
  	<section id="footer">
  		<div class="footer container">
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
  			<p>Copyrigt © 2020 Foyez. All rights reserved</p>
  		</div>
  	</section>





    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
</html>
