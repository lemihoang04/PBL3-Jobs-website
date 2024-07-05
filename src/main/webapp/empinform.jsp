<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_postjob.css" />
    <link rel="stylesheet" href="./Assets/CSS/postjob.css?v=3" />
    <link rel="stylesheet" href="./Assets/CSS/usercvlist.css?v=2" />
    <link rel="stylesheet" href="./Assets/CSS/empimform.css?v=3" />
    <link rel="stylesheet" href="./Assets/CSS/global_empimform.css?v=2" />

    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Red Hat Display:wght@700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Epilogue:wght@400;500;600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap"
    />
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="post-jobnew">
    <div class="side-bar-dashboard-company">
        <div class="side-bar-dashboard-company-inner">
          <div class="frame-parent">
            <div class="frame-wrapper">
              <img
                class="frame-child"
                loading="lazy"
                alt=""
                src="./public/briefcase-1.svg"
              />
            </div>
            <h3 class="jobhuntly">Job Find</h3>
          </div>
        </div>
        <div class="posta-job-inform">
          <div class="menu">
            <a href="./empinform.jsp" style="text-decoration:none" class="sidebar-menu">
              <img
                class="icon"
                loading="lazy"
                alt=""
                src="./public/icon-1.svg"
              />

              <div class="caption">Company Profile</div>
            </a>
            <a href="empcvload" style="text-decoration:none" class="sidebar-menu1">
              <img class="icon1" alt="" src="./public/icon-22.svg" />

              <div class="caption1">All Applicants</div>
            </a>
             <a href="./postjob.jsp" style="text-decoration:none" class="sidebar-menu2">
              <img
                class="heart-icon"
                loading="lazy"
                alt=""
                src="./public/add-105.svg"
              />

              <div class="canvas-cove">
                <div class="saved-applicants">Post Job</div>
              </div>
            </a> 
            <a href="empjobload" style="text-decoration:none" class="sidebar-menu3">
              <img class="icon2" alt="" src="./public/icon-joblist.svg" />

              <div class="caption2">Job Listing</div>
            </a>
            <div class="sidebar-menu4">
              <img class="icon3" alt="" src="./public/icon-joblist.svg" />

              <div class="caption3">Employee</div>
            </div>
          </div>
          <div class="posta-job-button-child"></div>
        </div>
        <img class="pattern-icon" alt="" src="./public/pattern.svg" />

        <div class="line-parent">
          <div class="line"></div>
          <div class="frame-container">
            <div class="frame-group">
              
              <div class="maria-kelly-parent">
                <div class="maria-kelly">${employer_acc.name}</div>
                <div class="mariakllyemailcom">${employer_acc.email}</div>
              </div>
            </div>
          </div>
        </div>
        <div class="profile-menu">
          <div class="rounded-rectangle"></div>
          <div class="frame">
            <div class="logout">
              <div class="logout1">Logout</div>
              <img class="icon4" alt="" src="./public/icon-8.svg" />
            </div>
          </div>
        </div>
      </div>
      <main class="top-nav-container">
        <section class="top-nav6">
          <img class="pattern-icon6" alt="" src="./public/pattern3.svg" />

          <h1 class="company-profile2">Company Profile</h1>
			<div class="action">
                <a href="emplogout" style="text-decoration:none" class="button">
              <b class="caption4">Log Out</b>
            </a>
                
              </div>
        </section>
        <section class="frame-wrapper11">
          <div class="tabs-wrapper">
            <div class="tabs">
              <div class="tab-menu">
                <div class="caption107">My Profile</div>
              </div>
              <div class="tab-menu1">
                <div class="caption108">Login Details</div>
              </div>
              <div class="tab-menu2">
                <div class="caption109">Notifications</div>
              </div>
              <div class="tab-menu3">
                <div class="caption110">Notifications</div>
              </div>
              <div class="tab-menu4">
                <div class="caption111">Notifications</div>
              </div>
              <div class="tab-menu5">
                <div class="caption112">Notifications</div>
              </div>
            </div>
          </div>
        </section>
        <section class="frame-wrapper12">
          <div class="frame-parent23">
            <div class="basic-information-wrapper1">
              <div class="basic-information5">Basic Information</div>
            </div>
            <form method="POST" action="empinformupdate" class="label-input-instance" enctype="multipart/form-data">
              <div class="this-is-your-personal-informat-wrapper">
                <div class="this-is-your">
                  This is your personal information that you can update anytime.
                </div>
              </div>
              <div class="label-input-instance1">
                <div class="label-input-instance2"></div>
              </div>
              <div class="profile-photo-wrapper">
                <div class="profile-photo">
                  <div class="profile-photo1">
                    <div class="profile-photo2">Profile Photo</div>
                    <div class="this-image-will"></div>
                  </div>
                  <div class="photo">
                    <img
                      class="avatar-icon19"
                      loading="lazy"
                      alt="Uploaded Photo"
                      id="uploadedImg"
                      src="${employer_acc.pic_link}"
                    />

                    <label for="fileInput" class="button11">
                      <b class="caption113">Upload photo</b>
                    </label>
                    <input name="file" type="file" id="fileInput" accept="image/*" style="display:none;" onchange="updateImage(this)" />
                  </div>
                </div>
                <script>
                  function updateImage(input) {
                    if (input.files && input.files[0]) {
                      var reader = new FileReader();
                      reader.onload = function(e) {
                        document.getElementById('uploadedImg').src = e.target.result;
                        document.getElementById('avatarImg1').src = e.target.result;
                      }
                      reader.readAsDataURL(input.files[0]);
                    }
                  }
                </script>
              </div>
              <div class="label-input-instance3">
                <div class="line17"></div>
              </div>
              <div class="personal-details">
                <div class="account-information">Account information</div>
                <div class="forms">
                  <div class="textfield32">
                    <div class="label62">
                      <span class="full-name2">Full Name </span>
                      <span class="span7">*</span>
                    </div>
                    <div class="input18">
                      <input
                      	name="name"
                        class="this-is-placeholder21"
                        placeholder=""
                        value="${employer_acc.name}"
                        type="text"
                      />
                    </div>
                  </div>
                  <div class="row-2">
                    <div class="textfield33">
                      <div class="label63">
                        <span class="phone-number1">Phone Number </span>
                        <span class="span8">*</span>
                      </div>
                      <div class="input19">
                        <input name="mobile" value="${employer_acc.mobile}" placeholder="" class="this-is-placeholder22"></input>
                      </div>
                    </div>
                    <div class="textfield34">
                      <div class="label64">
                        <span class="email">Email </span>
                        <span class="span9">*</span>
                      </div>
                      <div class="input20">
                        <input name="email" value="${employer_acc.email}" placeholder="" class="this-is-placeholder23"></input>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="label-input-instance4">
                <div class="button-parent">
                  <a href="./empchangepass.jsp" style="text-decoration:none" type="button" class="button12">
                    <b class="caption114">Change password</b>
                  </a>
                  <button class="button13">
                    <b class="caption115">Save Account</b>
                  </button>
                </div>
              </div>
              <div class="label-input-instance5">
                <div class="line18"></div>
              </div>
              <div class="personal-details1">
                <div class="company-information">Company information</div>
                <div class="forms1">
                  <div class="textfield35">
                    <div class="label65">
                      <span class="company-name">Company Name </span>
                      <span class="span10">*</span>
                    </div>
                    <div class="input21">
                      <input
                        name="company"
                        value="${employer_acc.company}"
                        class="jake-gyll17"
                        placeholder=""
                        type="text"
                      />
                    </div>
                  </div>
                  <div class="row-4">
                    <div class="textfield36">
                      <div class="address">
                        <span class="address1">Address </span>
                        <span class="span11">*</span>
                      </div>
                      <div class="input22">
                        <input name="location" value="${employer_acc.location}" placeholder="" class="this-is-placeholder24"></input>
                      </div>
                    </div>
                    <div class="textfield37">
                      <div class="city">
                        <span class="city1">City </span>
                        <span class="span12">*</span>
                      </div>
                      <div class="input23">
                        <input name="city" value="${employer_acc.city}" placeholder="" class="this-is-placeholder25"></input>
                      </div>
                    </div>
                  </div>
                  <div class="textfield38">
                    <div class="label66">
                      <span class="job">Job </span>
                      <span class="span13">*</span>
                    </div>
                    <div class="input24">
                      <input
                        name="job"
                        value="${employer_acc.job}"
                        class="jake-gyll18"
                        placeholder=""
                        type="text"
                      />
                    </div>
                  </div>
                </div>
              </div>
              <div class="label-input-instance6">
                <button class="button14">
                  <div class="caption116">
                    <b class="save-company-information"
                      >Save Company information</b
                    >
                  </div>
                </button>
              </div>
            </form>
          </div>
        </section>
      </main>
    </div>
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
