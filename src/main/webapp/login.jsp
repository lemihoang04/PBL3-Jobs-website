<%
	if(session.getAttribute("acc")!=null){
		response.sendRedirect("home");
	}
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
	<title>Job Find</title>
    <link rel="stylesheet" href="./Assets/CSS/global_login.css" />
    <link rel="stylesheet" href="./Assets/CSS/login.css?v=4" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
    />
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="login">
      <div class="login-inner">
        <div class="o-r-parent">
          <div class="o-r">
            <div class="login-button">
              <img
                class="briefcase-1-icon6"
                loading="lazy"
                alt=""
                src="./public/briefcase-11.svg"
              />
              <a href="home" class="job-find11">
                <div class="job-find1">Job Find</div>
              </a>
            </div>
          </div>
          <div class="frame-parent13">
            <div class="sign-in-wrapper">
              <h2 class="sign-in">Sign in</h2>
            </div>
            <div class="frame-parent14">
              <div class="dont-have-account-create-acc-wrapper">
                <div class="dont-have-account-container">
                  <span>Don't have account.</span>
                  <span class="span"> </span>
                  <span class="create-account2"><a href="./register_candicate.jsp">Create account</a></span>
                </div>
              </div>
              
    <form action="login" method="post" class="password-form" onsubmit="return validateForm()">		
    <div class="email-form">
        <img
            class="system-icon24pxmessage"
            loading="lazy"
            alt=""
            src="./public/system-icon24pxmessage.svg"
        />
        <div class="your-email">
            <div class="your-email1">
                <input
                	name="email"
                    id="emailInput"
                    class="password-form-child"
                    placeholder="Your Email"
                    type="text"
                    oninput="validateForm()"
                    required
                />
            </div>
        </div>
    </div>
    <div class="password-form-wrapper">
        <div class="password-form1">
            <img
                class="system-icon24pxpassword"
                alt=""
                src="./public/system-icon24pxpassword.svg"
            />
            <input
            	name="pass"
                id="passwordInput"
                class="password-form-child"
                placeholder="Password"
                type="password"
                oninput="validateForm()"
                required
            />
        </div>
    </div>
    <div class="other-icon-google">
        <div class="frame-parent15">
            <!-- <div class="forgot-password-wrapper">
                <b class="forgot-password">Forgot Password?</b>
            </div> -->
            <button class="sign-in-button" >
                <b class="sign-in1">Sign In</b>
                <div class="arrow-wrapper">
                    <img
                        class="arrow-icon"
                        loading="lazy"
                        alt=""
                        src="./public/arrow@2x.png"
                    />
                </div>
            </button>
        </div>
    </div>
</form>


            </div>
          </div>
          
        </div>
      </div>
      <img
        class="login-child"
        loading="lazy"
        alt=""
        src="./public/rectangle-1@2x.png"
      />
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="failed")
		{
		swal("Failed","Wrong Email or Password","error");
		}
	if(status=="success")
	{
	swal("Success","Account successfully created","success");
	}
	</script>
  </body>
</html>
