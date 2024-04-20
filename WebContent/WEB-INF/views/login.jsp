<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

	<!-- jstl , c:url value를 이용해서 루트로부터 절대경로를 지정해준다.-->
   	<link rel="stylesheet" href= "<c:url value='/resources/css/style.css'/>">	

</head>
	<body>
	<!-- partial:index.partial.html -->
	<div class="form">
	      
	      <ul class="tab-group">
	        <li class="tab active"><a href="#signup">Sign Up</a></li>
	        <li class="tab"><a href="#login">Log In</a></li>
	      </ul>
	      
	      <!-- 회원가입 -->
	      <div class="tab-content">
	        <div id="signup">   
	          <h1>Sign Up for Free</h1>
	          
	          <!-- 입력된 값의 이동을 위한 경로 -->
	          <form action="<c:url value='/join.do'/>" method="post">
	          
	          <div class="top-row">
	            <div class="field-wrap">
	              <label>
	                First Name<span class="req">*</span>
	              </label>
	              <input type="text" required autocomplete="off" name="name"/>
	            </div>
	        
	            <div class="field-wrap">
	              <label>
	                Last Name<span class="req">*</span>
	              </label>
	              <input type="text"required autocomplete="off" name="name_last"/>
	            </div>
	          </div>
	
	          <div class="field-wrap">
	            <label>
	              Email Address<span class="req">*</span>
	            </label>
	            <input type="email"required autocomplete="off" name= "email"/>
	          </div>
	          
	          <div class="field-wrap">
	            <label>
	              Set A Password<span class="req">*</span>
	            </label>
	            <input type="password"required autocomplete="off" name="passwd"/>
	          </div>
	          
	          <button type="submit" class="button button-block"/>Get Started</button>
	          
	          </form>
	
	        </div>
	        
	        <!-- 로그인 -->
	        <div id="login">   
	          <h1>Welcome Back!</h1>
	          
	          <form action="/" method="post">
	          
	            <div class="field-wrap">
	            <label>
	              Email Address<span class="req">*</span>
	            </label>
	            <input type="email"required autocomplete="off" />
	          </div>
	          
	          <div class="field-wrap">
	            <label>
	              Password<span class="req">*</span>
	            </label>
	            <input type="password"required autocomplete="off"/>
	          </div>
	          
	          <p class="forgot"><a href="#">Forgot Password?</a></p>
	          
	          <button class="button button-block"/>Log In</button>
	          
	          </form>
	
	        </div>
	        
	      </div><!-- tab-content -->
	      
	</div> <!-- /form -->
		<!-- partial -->
	  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	  <script src="<c:url value='/resources/js/script.js'/>"></script>
	  <script>
		/*     window.onload : 웹 페이지가 완전 로드되었을때 구동, 페이지의 요소를 접근하거나 초기화 할때 많이 사용된다.
	    전송된 데이터를 msg, result 값으로 받아서 result(db 처리 성공,실패)에 값이 있는경우 해당 경우에 맞는 msg 값을 받아서
	    화면에 보여주고, 새로고침을 하게되면 계속 회원가입이 되기 때문에 리다이렉트로 페이지 이   
		*/    
		window.onload=function(){
			var msg = '${msg}';
			var result = '${result}';
			
			if(result != ''){
				alert(msg);
				window.location.href = "<c:url value='/loginPage.do'/>"
			}
			/* 페이지가 로드 될때 강제적으로 login tab page를 보여주기 위해 구현 */
		    document.querySelector('a[href="#login"]').click();
		}
	</script>
	</body>
</html>