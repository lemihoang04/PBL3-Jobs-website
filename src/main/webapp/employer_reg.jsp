<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_empreg.css?v=1" />
    <link rel="stylesheet" href="./Assets/CSS/emp_reg.css?v=2" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
    />
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="company-reg">
      <div class="briefcase-1-parent">
        <img
          class="briefcase-1-icon"
          loading="lazy"
          alt=""
          src="./public/briefcase-1.svg"
        />

        <div class="job-find">Job Find</div>
      </div>
      <main class="sec-wrapper">
        <form action="employerreg" method="post" class="sec">
          <h1 class="create-account-as">Create Account as Employer</h1>
          <div class="already-have-account-container">
            <span>Already have account ?</span>
            <span class="span"> </span>
            <span class="log-in"><a href="./login_employer.jsp">Log in</a></span>
          </div>
          <b class="account-imformation">Account Imformation</b>
          <div class="user-form-area">
            <div class="full-name-form-parent">
              <div class="full-name-form">
                <div class="input-icons">
                  <img
                    class="system-icon24pxuser"
                    alt=""
                    src="./public/system-icon24pxuser.svg"
                  />
                </div>
                <input name="fullname" class="full-name" placeholder="Full Name" type="text" required />
              </div>
              <div class="email-form">
                <div class="system-icon24pxmessage-wrapper">
                  <img
                    class="system-icon24pxmessage"
                    alt=""
                    src="./public/system-icon24pxmessage.svg"
                  />
                </div>
                <input
                  name="email"
                  class="your-email"
                  placeholder="Your Email"
                  type="email"
                  required
                />
              </div>
              <div class="password-form">
                <div class="system-icon24pxpassword-wrapper">
                  <img
                    class="system-icon24pxpassword"
                    alt=""
                    src="./public/system-icon24pxpassword.svg"
                  />
                </div>
                <input name="pass" class="password" placeholder="Password" type="password" required/>
              </div>
              <div class="password-again-from">
                <div class="system-icon24pxpassword-container">
                  <img
                    class="system-icon24pxpassword1"
                    alt=""
                    src="./public/system-icon24pxpassword.svg"
                  />
                </div>
                <input
                  name="repass"
                  class="confirm-password"
                  placeholder="Confirm Password"
                  type="password"
                  required
                />
              </div>
              <div class="full-name-form1">
                <img
                  class="phone-icon-vector-telephone-sy"
                  alt=""
                  src="./public/phoneiconvectortelephonesymbol600nw1723717453-1@2x.png"
                />

                <input
                  name="phone"
                  class="full-name-form-child"
                  placeholder="Number Phone"
                  type="text"
                />
              </div>
            </div>
          </div>
          <b class="company-information">Company information</b>
          <div class="information-form">
            <div class="full-name-form2">
              <input
              	name="company"
                class="company-name"
                placeholder="Company Name"
                type="text"
                required
              />
            </div>
          </div>
          <div class="information-form1">
            <div class="full-name-form3">
              <div class="city">
              <input
              	name="city"
                class="company-name"
                placeholder="City"
                type="text"
                required
              />
              </div>
            </div>
          </div>
          <div class="information-form2">
            <div class="full-name-form4">
              <input
                name="location"
                class="company-location"
                placeholder="Company location"
                type="text"
                required
              />
            </div>
          </div>
          <div class="information-form3">
            <div class="full-name-form5">
              <input name="job" class="job" placeholder="Job" type="text" />
            </div>
          </div>
          <button class="sec1">
            <b type="submit" class="complete-registration">Complete registration</b>
          </button>
        </form>
      </main>
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
