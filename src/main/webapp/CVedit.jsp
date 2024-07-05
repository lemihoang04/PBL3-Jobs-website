<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_userinform.css" />
    <link rel="stylesheet" href="./Assets/CSS/userinform.css?v=4" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Epilogue:wght@400&display=swap"
    />
     
  </head>
  <body>
  
    <div class="dashboard-settings-account">
            <div class="side-bar-dashboard-applica">
        <div class="logo-2">
          <img class="logo-2-child" alt="" src="./public/frame-3.svg" />

          <b class="jobhuntly">JobHuntly</b>
        </div>
        <div class="jobs-overview-parent">
          <div class="jobs-overview">
            <div class="job-details">
              <img
                class="briefcase-1-icon"
                loading="lazy"
                alt=""
                src="./public/briefcase-1.svg"
              />

              <h3 class="job-find">Job Find</h3>
            </div>
          </div>
          <div class="menu-divider">
           <!--  <div class="sidebar-menu">
              <img class="icon" loading="lazy" alt="" src="./public/icon.svg" />

              <div class="caption">Messages</div>
            </div> -->
            <a href="usercvload" style="text-decoration:none" class="sidebar-menu1">
              <div class="icon1">
                <img
                  class="vector-stroke-icon"
                  loading="lazy"
                  alt=""
                  src="./public/vector-stroke.svg"
                />

                <div class="background-shape"></div>
                <div class="foreground-shape"></div>
              </div>
              <div class="caption1">My Applications</div>
            </a>
          </div>
          <div class="content-area"></div>
          <div class="settings">
            <div class="settings-title">
              <div class="settings1">SETTINGS</div>
            </div>
            <div class="menu">
              <a href="userinform" style="text-decoration:none" class="sidebar-menu2">
                <img class="icon2" alt="" src="./public/icon-1.svg" />

                <div class="caption2">Your account</div>
              </a>
              <div class="sidebar-menu3">
                <img class="icon3" alt="" src="./public/icon-2.svg" />

                <div class="caption3">Help</div>
              </div>
            </div>
          </div>
        </div>
        <img class="pattern-icon" alt="" src="./public/pattern.svg" />

        <div class="line-parent">
          <div class="line"></div>
          <div class="user-profile">
            <div class="user-information">
              <div class="user-info">
                <div class="user-name">
                  <div class="jake-gyll">${acc.name}</div>
                </div>
                <div class="jakegyllemailcom">${acc.email}</div>
              </div>
            </div>
          </div>
        </div>
        <div class="profile-menu">
          <div class="rounded-rectangle"></div>
          <div class="frame">
            <div class="logout">
              <div class="logout1">Logout</div>
              <img class="icon4" alt="" src="./public/icon-3.svg" />
            </div>
          </div>
        </div>
      </div>
      <div class="page-structure">
        <header class="page-content">
          <div class="top-nav">
            <img class="pattern-icon1" alt="" src="./public/pattern1.svg" />

            <div class="dashboard-title">
              <h1 class="dashboard">Settings</h1>
            </div>
            <a href="home" style="text-decoration:none" type="button" class="button">
              <b class="caption4">Back to homepage</b>
            </a>
          </div>
        </header>
        
        
        <div class="user-cv">
    <div class="landing-page-submit-applicat-parent">
      <main class="landing-page-submit-applicat">
        <section class="base"></section>
        <form method="POST" action="usercvedit" class="input-fields-wrapper" enctype="multipart/form-data">
        <input type="hidden" name="cvid" value="${cv.id}">
          <div class="input-fields">
            <div class="submit-your-application">
              <h3 class="submit-your-application1">Submit your application</h3>
            </div>
            <div class="textfield">
              <div class="label6">Company</div>
              <div class="input">
                <input
                  name="company"
                  class="this-is-placeholder"
                  value="${cv.company}"
                  type="text"
                  readonly
                />
              </div>
            </div>
            <div class="textfield">
              <div class="label6">Full name</div>
              <div class="input">
                <input
                  class="this-is-placeholder"          
					value="${acc.name}"
                  type="text"
                  readonly
                />
              </div>
            </div>
            <div class="textfield1">
              <div class="label7">Email address</div>
              <div class="input1">
                <input
                  class="this-is-placeholder"
                  value="${acc.email}"
                  type="text"
                  readonly
                />
              </div>
            </div>
            <div class="textfield2">
              <div class="label8">Phone number</div>
              <div class="input2">
                <input
                  class="this-is-placeholder"
                  value="${acc.mobile}"
                  type="text"
                  readonly
                />
              </div>
            </div> 
            <div class="textfield6">
              <div class="label12">Additional information</div>
              <div class="content">
                <textarea
                  name="description"	
                  class="form"
                  placeholder="Add a cover letter or anything else you want to share"
                  rows="{8}"
                  cols="{29}"
                >${cv.description}
                </textarea>
                <div class="helper-text">
                  <div class="maximum-500-characters">
                    Maximum 500 characters
                  </div>
                </div>
              </div>
            </div>
            <div class="textfield7">
              <div class="attach-your-resume-wrapper">
                <div class="attach-your-resume">Attach your resume</div>
              </div>
              <div class="form-attach">
                <div class="icon-wrapper">
                  <img class="icon8" alt="" src="./public/icon-7.svg" />
                  <label for="file-upload">
            Attach Resume/CV: 
            <span id="file-name-display">No file chosen</span>
        </label>
        <input name="file" type="file" class="attach-resumecv" id="file-upload" style="display:none;" onchange="updateFileName(this)">
                </div>
                  
              </div>
            </div>
            <div class="divider3"></div>
            <button type="submit" class="button2" >
              <b class="caption12">Submit Application</b>
            </button>
          </div>
        </form>
      </main>
    </div>
        </div>
        <div class="content-dividers2">
          <div class="line3"></div>
        </div>
          </div>
        </div>
      </div>
    </div>
 <script>
        function setFileName() {
            const filename = "${cv.filename}";
            if (filename) {
                const fileInput = document.querySelector('.attach-resumecv');
                fileInput.setAttribute('data-filename', filename);
                document.getElementById('file-name-display').textContent = filename;
            }
        }

        function updateFileName(input) {
            const file = input.files[0];
            if (file) {
                document.getElementById('file-name-display').textContent = file.name;
            } else {
                document.getElementById('file-name-display').textContent = 'No file chosen';
            }
        }

        window.onload = setFileName;
    </script>
    <!-- Include jQuery library -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <!-- Include jQuery UI library -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
      <!-- Include jQuery UI CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">

      
  <script src="./Assets/JavaScript/dropmenu(gender).js?v=3"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="success")
		{
		swal("Success","Change Password Success","success");
		}
	if(status=="success1")
	{
	swal("Success","Change Imformation Success","success");
	}
	
	</script>
  </body>
  
</html>
