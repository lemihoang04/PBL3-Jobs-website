<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
	<title>User Information</title>
    <link rel="stylesheet" href="./Assets/CSS/global_userinform.css" />
    <link rel="stylesheet" href="./Assets/CSS/userinform.css?v=5" />

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
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
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
      <form action="userinfupdate" method="post" class="page-structure">
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
          <div class="navigation-tabs">
            <div class="tabs">
              <div class="tab-menu">
                <div class="caption5">My Profile</div>
              </div>
              <div class="tab-menu1">
                <div class="caption6">Login Details</div>
              </div>
              <!-- <div class="tab-menu2">
                <div class="caption7">Notifications</div>
              </div> -->
              <div class="tab-menu3">
                <div class="caption8">Notifications</div>
              </div>
              <div class="tab-menu4">
                <div class="caption9">Notifications</div>
              </div>
              <div class="tab-menu5">
                <div class="caption10">Notifications</div>
              </div>
            </div>
          </div>
        </header>
        <div class="information-header-wrapper">
          <div class="information-header">
            <div class="basic-information">Basic Information</div>
            <div class="this-is-your">
              This is your personal information that you can update anytime.
            </div>
          </div>
        </div>
        <div class="content-dividers">
          <div class="line1"></div>
        </div>
        <div class="user-details">
          <div class="personal-details">
            <div class="personal-details1">Personal Details</div>
            <div class="forms">
              <div class="textfield">
                <div class="label">
                  <span class="full-name">Full Name </span>
                  <span class="span">*</span>
                </div>
                <div class="input">
                  <input
                  	name="fullname"
                  	value="${acc.name}"
                    class="this-is-placeholder"                    
                    type="text"
                  />
                </div>
              </div>
              <div class="row-2">
                <div class="textfield1">
                  <div class="label1">
                    <span class="phone-number">Phone Number </span>
                    <span class="span1">*</span>
                  </div>
                  <div class="input1">
                    <div class="this-is-placeholder1">
                    <input
                    name="phone"
                    class="this-is-placeholder3"
					value="${acc.mobile}"
					type="text"
					/>
					</div>
                  </div>
                </div>
                <div class="textfield2">
                  <div class="label2">
                    <span class="email">Email </span>
                    <span class="span2">*</span>
                  </div>
                  <div class="input2">
                    <div name="email" class="this-is-placeholder2">${acc.email}</div>
                  </div>
                </div>
              </div>
              <div class="row-3">
                <div class="textfield3">
                  <div class="label3">
                    <span class="date-of-birth">Date of Birth </span>
                    <span class="span3">*</span>
                  </div>
                  <div class="dropdown">
                    <input
                      name="birthday"	
                      class="this-is-placeholder3"
                      placeholder="dd/mm/yyyy"
                      value="${acc.birthday}"
                      type="text"
                      id="datepicker"
                    />

                    <img class="icon5" alt="" src="./public/icon-4.svg" />
                  </div>
                </div>
                <div class="textfield4">
                  <div class="label4">
                    <span class="gender">Gender </span>
                    <span class="span4">*</span>
                  </div>
                  <div class="dropdown1" id="gender-input" >
      
                    <input class="this-is-placeholder3" 
                    		name="gender"
                    		type="text"
                    		value="${acc.gender}" 
                    		id="gender"
                    		readonly
                    		>
                    		


                    <div id="gender-options" class="gender-options">
      <div class="gender-row">
        <span class="gender-option" data-value="Male">Male</span>
      </div>
      <div class="gender-row">
        <span class="gender-option" data-value="Female">Female</span>
      </div>
    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="content-dividers2">
          <div class="line3"></div>
        </div>
        <div class="button-container-wrapper">
          <div class="button-container">
            <a href="./changepass.jsp" style="text-decoration:none" type="button" class="button2">
              <b class="caption12">Change password</b>
            </a>
            <button class="button3">
              <b class="caption13">Save Profile</b>
            </button>
          </div>
        </div>
      </form>
    </div>
    <!-- Include jQuery library -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <!-- Include jQuery UI library -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
      <!-- Include jQuery UI CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
      <script>
        $(document).ready(function(){
          // Khi click vào ô input, hiển thị bảng daytime picker
          $("#datepicker").datepicker({
            dateFormat: "dd/mm/yy", // Định dạng ngày tháng
            changeYear: true, // Cho phép thay đổi năm
            changeMonth: true // Cho phép thay đổi tháng
          });
        });
      </script>
      
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
