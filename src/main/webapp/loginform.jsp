<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


</head>
<style>

/* BASIC */

html {
  background-color: #56baed;
}

body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}

a {
  color: #92badd;
  display:inline-block;
  text-decoration: none;
  font-weight: 400;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}



/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}



/* TABS */

h2.inactive {
  color: #cccccc;
}

h2.active {
  color: #0d0d0d;
  border-bottom: 2px solid #5fbae9;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder {
  color: #cccccc;
}



/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #56baed;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}

h1{
    color:#60a0ff;
}

/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:30%;
}



</style>


<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

  
    <div class="fadeIn first">
      <img src="data:image/png;base64,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" id="icon" alt="User Icon" />
      <h1>로그인</h1>
    </div>

    <!-- Login Form -->
    <form>
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="username">
      <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

   
    <div id="formFooter">
      <a class="underlineHover" href="#">Ezen Book Store</a>
    </div>

  </div>
</div>
</body>