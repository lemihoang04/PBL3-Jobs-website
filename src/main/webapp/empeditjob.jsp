<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_postjob.css" />
    <link rel="stylesheet" href="./Assets/CSS/postjob.css?v=4" />
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
        <div class="posta-job-button">
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
              <div class="avatar-wrapper">
                <img
                  class="avatar-icon"
                  loading="lazy"
                  alt=""
                  src="./public/avatar1@2x.png"
                />
              </div>
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
      <form action="empjobupdate" method="post" class="frame-main">
      
      <input type="hidden" name="jobid" value="<%= request.getAttribute("jobid")%>">
        <section class="frame-section">
          <div class="top-nav-wrapper">
            <header class="top-nav">
              <div class="job-list">
                <img
                  class="company-logo-icon"
                  alt=""
                  src="${employer_acc.pic_link}"
                />

                <div class="job-title">
                  <div class="company">Company</div>
                  <div class="enter-job-description">
                    <div class="nomad">${employer_acc.company}</div>
                    <img class="icon5" alt="" src="./public/icon1.svg" />
                  </div>
                </div>
              </div>
              <div class="action">
                <a href="emplogout" style="text-decoration:none" class="button">
              <b class="caption4">Log Out</b>
            </a>
                
              </div>
            </header>
          </div>
          <div class="top-nav1">
            <img class="icon6" alt="" src="./public/icon.svg" />

            <h1 class="post-a-job">Edit a Job</h1>
          </div>
        </section>
        <section class="frame-wrapper1">
          <section class="frame-parent1">
            <div class="basic-information-wrapper">
              <div class="basic-information">Basic Information</div>
            </div>
            <div class="this-information-will-be-displ-wrapper">
              <div class="this-information-will">
                This information will be displayed publicly
              </div>
            </div>
            <div class="line-wrapper">
              <div class="line1"></div>
            </div>
            <div class="job-title-wrapper">
              <section class="job-title1">
                <div class="job-title2">
                  <div class="job-title3">Job Title</div>
                  <div class="job-titles-must">
                    Job titles must be describe one position
                  </div>
                </div>
                <div class="textfield">
                  <div class="input">
                    <input
                      value="${detail.jobTitle}"
                      name="jobtitle"
                      class="this-is-placeholder"
                      placeholder="e.g. Software Engineer"
                      type="text"
                    />
                  </div>
                </div>
              </section>
            </div>
            <div class="line-container">
              <div class="line2"></div>
            </div>
            <div class="frame-div">
              <div class="frame-parent2">
                <div class="type-of-employment-parent">
                  <div class="type-of-employment">Categories</div>
                  <div class="you-can-select">
                    You can select multiple type of employment
                  </div>
                </div>
                <div class="input1">
                  <input
                    value="${detail.job}"
                  	name="job"
                    class="this-is-placeholder1"
                    placeholder="Select Categories (Maximum: 3 Categories)"
                    type="text"
                  />
                  <div class="dropdown-container"></div>
                </div>
              </div>
            </div>
            <script src="./Assets/JavaScript/ChooseJob.js"></script>
            <div class="line-frame">
              <div class="line3"></div>
            </div>
            <div class="job-desc-content">
              <div class="frame-parent3">
                <div class="salary-parent">
                  <div class="salary">Salary</div>
                  <div class="please-specify-the">
                    Please specify the estimated salary range for the role.
                  </div>
                </div>
                <div class="frame-parent4">
                  <div class="textfield-parent">
                    <div class="textfield1">
                      <div class="milions-vn">Milions VND</div>
                      <div class="dollar-wrapper">
                        <img class="dollar-icon" alt="" />
                      </div>
                      <div class="divider-wrapper">
                        <div class="divider"></div>
                      </div>
                      <input value="${min}" name="minsalary" type="text" class="div">
                    </div>
                    <div class="to-wrapper">
                      <div class="to">to</div>
                    </div>
                  </div>
                  <div class="textfield2">
                    <div class="dollar-container">
                      <div class="dollar">
                        <div class="milions-vn">Milions VND�</div>
                      </div>
                    </div>
                    <div class="matrix-operation">
                      <div class="divider1"></div>
                    </div>
                    <input value="${max}" name="maxsalary" type="text" class="public-info">
                  </div>
                </div>
              </div>
            </div>
            <div class="line-wrapper1">
              <div class="line4"></div>
            </div>
            <div class="categories-wrapper">
              <section class="categories">
                <div class="categories1">
                  <div class="categories2">Type of employment </div>
                </div>
                <div class="textfield3">
                  <div class="label">Select Type of employment </div>
                  <div class="dropdown">
                    <input value="${detail.workWay}" name="workway" type="text" placeholder="Select Type of employment" class="this-is-placeholder2">
                    <img class="icon7" alt="" src="./public/icon-101.svg" />
                    <div class="dropdown-content"></div>
                  </div>
                </div>
                <script src="./Assets/JavaScript/type_employ.js"></script>
              </section>
            </div>
            <div class="categories-container">
              <section class="categories3">
                <div class="categories4">
                  <div class="degree">Degree</div>
                </div>
                <div class="textfield4">
                  <div class="label1">Select Degree</div>
                  <div class="dropdown1">
                      <input value="${detail.qualification}" name="education" type="text" placeholder="Select Degree" class="this-is-placeholder3">
                      <img class="icon8" alt="" src="./public/icon-101.svg" />
                      <div class="dropdown1-content"></div> 
                  </div>
                </div>
                <script src="./Assets/JavaScript/Degree.js"></script>
              </section>
            </div>
            <div class="categories-frame">
              <section class="categories5">
                <div class="categories6">
                  <div class="experience">Experience�</div>
                </div>
                <div class="textfield5">
                  <div class="label2">Select Experience�</div>
                  <div class="dropdown2">
                    <input value="${detail.experience}" name="experience" type="text" placeholder="Select Experience" class="this-is-placeholder4">
                    <img class="icon9" alt="" src="./public/icon-101.svg" />
                    <div class="dropdown1-content"></div> 
                  </div>
                </div>
                <script src="./Assets/JavaScript/Experience.js"></script>
              </section>
            </div>
            <div class="categories-wrapper1">
              <section class="categories7">
                <div class="categories8">
                  <div class="job-level">Job level</div>
                </div>
                <div class="textfield6">
                  <div class="select-job-level">Select Job level�</div>
                  <div class="dropdown3">
                    <input value="${detail.level}" name="level" type="text" placeholder="Select Job level" class="this-is-placeholder5">
                    <img class="icon10" alt="" src="./public/icon-101.svg" />
                    <div class="dropdown1-content"></div> 
                  </div>
                </div>
                <script src="./Assets/JavaScript/Job_Level.js"></script>
              </section>
            </div>
            <section class="line-wrapper2">
              <div class="line5"></div>
            </section>
            <section class="job-title-container">
              <div class="job-title4">
                <div class="job-title5">
                  <div class="number-of-recruitment">Number of recruitment</div>
                </div>
                <div class="textfield7">
                  <div class="input2">
                    <input
                      value="${detail.numberRecruits}"
                      name="number_recruits"	
                      class="numbers-only-eg10"
                      placeholder="Numbers  only. Eg:10"
                      type="text"
                    />
                  </div>
                </div>
              </div>
            </section>
            <section class="job-title-frame">
              <div class="job-title6">
                <div class="job-title7">
                  <div class="submission-deadline">Submission deadline</div>
                  <div class="job-titles-must1">
                    Job titles must be describe one position
                  </div>
                </div>
                <div class="textfield8">
                  <div class="input3">
                    <input
                      value="${detail.endTime}"
                      name="endtime"
                      class="this-is-placeholder6"
                      placeholder="dd/mm/yy"
                      type="text"
                      id="datepicker"
                    />
                  </div>
                  <div class="this-is-helper">At least 80 characters</div>
                </div>
              </div>
            </section>
             <!-- Include jQuery library -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <!-- Include jQuery UI library -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
      <!-- Include jQuery UI CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
      <script>
        $(document).ready(function(){
          var today = new Date();
          // Khi click vào ô input, hiển thị bảng daytime picker
          $("#datepicker").datepicker({
            dateFormat: "dd/mm/yy", // Định dạng ngày tháng
            minDate: today,
            changeYear: true, // Cho phép thay đổi năm
            changeMonth: true // Cho phép thay đổi tháng
          });
        });
      </script>
            <section class="required-skills-wrapper">
              <div class="required-skills">
                <div class="required-skills1">
                  <div class="required-skills2">Required Skills</div>
                  <div class="add-required-skills">
                    Add required skills for the job
                  </div>
                </div>
                <div class="textfield9">
                  <div class="input4">
                    <input
                      class="describe-skills-you"
                      placeholder="Describe skills you want"
                      type="text"
                    />
                  </div>
                </div>
              </div>
            </section>
            <div class="basic-information-container">
              <section class="basic-information1">
                <div class="workplace">Workplace</div>
                <div class="textfield10">
                  <div class="input5">
                    <input value="${detail.location}" name="location" type="text" placeholder="Eg: 190A -190B Tran Van Cham, Ap 4, Xa Phuoc Vinh An, Cu Chi" class="eg-190a-190b">
                  </div>
                </div>
              </section>
            </div>
            <section class="basic-information-frame">
              <div class="basic-information2">
                <div class="job-location">Job location</div>
                <div class="textfield11">
                  <div class="input6">
                    <input
                      value="${detail.city}"
                      name="city"	
                      class="write-name-city"
                      placeholder="Write name city"
                      type="text"
                    />
                    <div class="dropdown1-content"></div> 
                  </div>
                </div>
              </div>
              <script src="./Assets/JavaScript/City.js"></script>
            </section>
          </section>
        </section>
        <section class="frame-wrapper2">
          <section class="job-descriptions-parent">
            <div class="job-descriptions">Job descriptions</div>
            <div class="line-wrapper3">
              <div class="line6"></div>
            </div>
            <div class="job-descriptions1">
              <div class="job-descriptions2">
                <div class="job-descriptions3">Job descriptions�</div>
              </div>
              <textarea              
              	name="description"
                class="textfield12"
                placeholder="Describe job "
                rows="{8}"
                cols="{29}"
              >${detail.description}</textarea>
            </div>
          </section>
        </section>
        <section class="gradient-boosting">
          <section class="x-g-boost-regressor-parent">
            <div class="x-g-boost-regressor">
              <div class="line7"></div>
            </div>
            <div class="responsibilities">
              <div class="responsibilities1">
                <div class="job-requirements">Job requirements</div>
              </div>
              <textarea              
              	name="requirement"
                class="textfield13"
                placeholder="Professional skills or soft skills necessary for the job "
                rows="{8}"
                cols="{29}"
              >${detail.requirement}</textarea>
            </div>
          </section>
        </section>
        <section class="responsibilities-wrapper">
          <div class="responsibilities2">
            <div class="responsibilities3">
              <div class="benefits">Benefits�</div>
            </div>
            <textarea            
              name="benefit"	
              class="textfield14"
              placeholder="The benefits and perks of the job for candidates "
              rows="{8}"
              cols="{29}"
            >${detail.benefit}</textarea>
          </div>
        </section>
        <div class="frame-wrapper3">
          <div class="frame-parent5">
            <div class="line-wrapper4">
              <div class="line8"></div>
            </div>
            <button class="button">
              <b class="caption4">Save Job</b>
            </button>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
