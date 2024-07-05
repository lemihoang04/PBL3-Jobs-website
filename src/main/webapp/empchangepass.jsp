<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_changepass.css?v=1" />
    <link rel="stylesheet" href="./Assets/CSS/changepass.css?v=2" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap"
    />
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="company-reg">
      <div class="frame-parent">
        <div class="frame-wrapper">
          <div class="briefcase-1-parent">
            <img
              class="briefcase-1-icon"
              loading="lazy"
              alt=""
              src="./public/briefcase-1.svg"
            />

            <h3 class="job-find">Job Find</h3>
          </div>
        </div>
        <button class="button">
          <a href="empinformload" class="caption">Back to account manager</a>
        </button>
      </div>
      <section class="settings-panel">
        <form action="emppasswordchange" method="post" class="sec">
          <h1 class="change-password">Change password</h1>
          <div class="password-fields">
            <div class="password-form">
              <div class="password-form1">
                <div class="password-icons">
                  <img
                    class="system-icon24pxpassword"
                    alt=""
                    src="./public/system-icon24pxpassword.svg"
                  />
                </div>
                <input
                  name="oldpass"
                  class="old-password"
                  placeholder="Old Password"
                  type="password"
                  required
                />
              </div>
              <div class="password-form2">
                <div class="system-icon24pxpassword-wrapper">
                  <img
                    class="system-icon24pxpassword1"
                    alt=""
                    src="./public/system-icon24pxpassword.svg"
                  />
                </div>
                <input
                  name="newpass"
                  class="new-password"
                  placeholder="New Password"
                  type="password"
                  required
                />
              </div>
              <div class="password-again-from">
                <div class="system-icon24pxpassword-container">
                  <img
                    class="system-icon24pxpassword2"
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
            </div>
          </div>
          <button class="sec1">
            <b class="comfirm">Confirm</b>
          </button>
        </form>
      </section>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="wrong")
		{
		swal("Failed","Wrong Password","error");
		}
	
	</script>
  </body>
</html>
