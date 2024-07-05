<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/global.css" />
    <link rel="stylesheet" href="./Assets/CSS/register_candicate.css?v=1" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="register-candicate">
      <div class="already-have-account-container">
        <span>Already have account ?</span>
        <span class="span"> </span>
        <span class="log-in"><a href="./login.jsp">Login</a></span>
      </div>
      <h1 class="create-account">Create Account</h1>
      <img
        class="register-candicate-child"
        alt=""
        src="./images/Rectangle 1.png"
      />
      <img
        class="briefcase-1-icon"
        loading="lazy"
        alt=""
        src="./public/briefcase-11.svg"
      />

      <a href="home"><div class="job-find">Job Find</div></a>
      <form action="register" method="post" class="property-launcher">
        <div class="property-1lua-chon-parent">
          <div class="property-1lua-chon">
            <div class="system-icon-user-wrapper">
              <button class="system-icon-user">
                <img
                  class="system-icon-user-child"
                  alt=""
                  src="./public/rectangle-2@2x.png"
                />

                <div class="email-input">
                  <div class="candidate">Candidate</div>
                </div>
              </button>
            </div>
            
            <a href="./register-employee1.html" class="property-tu-cach">
              <img class="create-account-as-a" alt="" src="./public/launchpad@2x.png" />
              <div class="employers-wrapper">
                  <div class="employers">Employers</div>
              </div>
            </a>
          </div>
          <div class="property-1tu-cach">
            <div class="create-account-as">CREATE ACCOUNT AS A</div>
          </div>
        </div>
        
        <div class="google-sign-in-button">
          <div class="full-name-form">
            <div class="system-icon24pxuser-wrapper">
              <img
                class="system-icon24pxuser"
                alt=""
                src="./public/system-icon24pxuser.svg"
              />
            </div>
            <input name="fullname" class="full-name" placeholder="Full Name" type="text" />
          </div>
          <div class="email-form">
            <div class="system-icon24pxmessage-wrapper">
              <img
                class="system-icon24pxmessage"
                alt=""
                src="./public/system-icon24pxmessage.svg"
              />
            </div>
            <input name="email" class="your-email" placeholder="Your Email" type="email" />
          </div>
          <div class="password-form">
            <div class="system-icon24pxpassword-wrapper">
              <img
                class="system-icon24pxpassword"
                alt=""
                src="./public/system-icon24pxpassword.svg"
              />
            </div>
            <input name="pass" class="password" placeholder="Password" type="password" />
          </div>
        </div>
        <div class="arrow-parent">
          <img
            class="arrow-icon"
            loading="lazy"
            alt=""
            src="./public/arrow@2x.png"
          />

          <div class="full-name-form1">
            <img
              class="phone-icon-vector-telephone-sy"
              alt=""
              src="./public/phoneiconvectortelephonesymbol600nw1723717453-1@2x.png"
            />

            <input
              name="phone"
              class="login-with-facebook-button"
              placeholder="Number Phone"
              type="text"
            />
          </div>
        </div>
        <div class="password-again-from">
          <div class="system-icon24pxpassword-container">
            <img
              class="system-icon24pxpassword1"
              loading="lazy"
              alt=""
              src="./public/system-icon24pxpassword.svg"
            />
          </div>
          <input name="repass" class="password" placeholder="Confirm Password" type="password" />
        </div>
        <button class="sign-in-button">
          <b class="create-account1">Create Account</b>
        </button>
        </form>
	    </div>
	    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="failed")
		{
		swal("Failed","Error occurred","error");
		}
	if(status=="duplicate_email")
	{
	swal("Failed","The email you entered already exists","error");
	}
	if(status=="duplicate_phone")
	{
	swal("Failed","The phone number you entered already exists","error");
	}
	if(status=="success")
	{
	swal("Success","Account successfully created","success");
	}
	</script>
	  </body>
</html>
