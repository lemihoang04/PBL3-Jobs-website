<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
	<title>${detail.jobTitle}</title>
    <link rel="stylesheet" href="./Assets/CSS/global_jobdetail1.css?v=1" />
    <link rel="stylesheet" href="./Assets/CSS/jobdetail1.css?v=3" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
  </head>
  <body>
    <div class="job-detail">
    <jsp:include page="menu1.jsp"></jsp:include>
      <section class="breadcrumb-wrapper">
        <div class="breadcrumb">
          <div class="job-details">Job Details</div>
          <div class="div">/</div>
          <div class="graphics-design">Graphics & Design</div>
          <div class="label">Label</div>
          <div class="div1">/</div>
          <div class="label1">Label</div>
          <div class="div2">/</div>
          <div class="label2">Label</div>
          <div class="div3">/</div>
          <div class="label3">Label</div>
          <div class="div4">/</div>
          <div class="label4">Label</div>
          <div class="div5">/</div>
          <div class="navigation-trail">
            <div class="breadcrumb-details">
              <div class="home3">Home</div>
              <div class="div6">/</div>
              <div class="find-job">Find Job</div>
              <div class="div7">/</div>
              <div class="job-details1">Job Details</div>
            </div>
          </div>
        </div>
      </section>
      <section class="content-container-wrapper">
        <div class="content-container">
          <div class="job-summary">
            <img
              class="image-placeholder-icon"
              loading="lazy"
              alt=""
              src="${detail.picLink}"
            />

            <div class="job-header">
              <div class="senior-ux-designer-parent">
                <h2 class="senior-ux-designer">${detail.jobTitle}</h2>
                <div class="at-facebook">${detail.company}</div>
                <button class="employment-type">
                  <div class="full-time">${detail.workWay}</div>
                </button>
              </div>
            </div>
          </div>
          <div class="button-container-wrapper">
            <div class="button-container">
              <div class="icon-button">
                <img
                  class="bookmarksimple-icon"
                  loading="lazy"
                  alt=""
                  src="./public/bookmarksimple.svg"
                />
              </div>
              <button class="button1" id="button">
                <div class="primary1">Apply now</div>
                <img
                  class="fiarrow-right-icon"
                  alt=""
                  src="./public/PngItem_4649333.png"
                />
              </button>
            </div>
          </div>
        </div>
      </section>
      <section class="job-details-container">
        <div class="main-info">
          <div class="job-information-parent">
            <div class="job-information">
              <div class="requirements">Work location</div>
              <div class="velstar-is-a">
                ${detail.location}
              </div>
              <!-- <div class="requirements">Requirements</div> -->
            </div>
            <div class="salary-location">
              <div class="salary-and-location">
                <div class="salary-container-parent">
                  <div class="salary-container">
                    <div class="salary-details">
                      <div class="salary-vnd">Salary (VND)</div>
                    </div>
                    <div class="salary-amount">
                      <div class="div8">${detail.salary}</div>
                      <div class="salary-type">
                        <div class="monthly-salary">Monthly salary</div>
                      </div>
                    </div>
                  </div>
                  <div class="line-wrapper">
                    <div class="frame-child"></div>
                  </div>
                </div>
              </div>
              <div class="location-map-parent">
                <div class="location-map">
                  <img
                    class="maptrifold-icon"
                    loading="lazy"
                    alt=""
                    src="./public/maptrifold.svg"
                  />
                </div>
                <div class="location-details">
                  <div class="job-location">Job Location</div>
                  <div class="dhaka-bangladesh">${detail.city}</div>
                </div>
              </div>
            </div>
          </div>
          <div class="job-specifics">
            <div class="skill-requirements">
            <div class="requirements">Requirements</div>
              <div class="skills-details">
                <div class="great-troubleshooting-and-container">
                  <ul class="great-troubleshooting-and-anal">
                    <li class="great-troubleshooting-and">
                      ${detail.requirement}
                    </li>
                    
                  </ul>
                </div>
              </div>
              <div class="additional-info">
                <div class="desirable">Job Description:</div>
                <div class="details-list">
                  <div class="working-knowledge-of-container">
                    <ul class="working-knowledge-of-ecommerce">
                      <li class="working-knowledge-of">
                        ${detail.description}
                      </li>          
                    </ul>
                  </div>
                  <div class="benefits">Benefits</div>
                </div>
              </div>
              <div class="early-finish-on-container">
                <ul class="early-finish-on-fridays-for-ou">
                  <li class="early-finish-on">
                    ${detail.benefit}
                  </li>
                </ul>
              </div>
            </div>
            <div class="job-information1">
              <div class="overview">
                <div class="job-posting-details">
                  <div class="job-overview">Job Overview</div>
                  <div class="post-date-experience">
                    <div class="info">
                      <img
                        class="calendarblank-icon"
                        alt=""
                        src="./public/calendarblank.svg"
                      />

                      <div class="heading">
                        <div class="job-posted">Job Posted:</div>
                        <div class="jun-2021">${detail.startTime}</div>
                      </div>
                    </div>
                    <div class="info1">
                      <img class="timer-icon" alt="" src="./public/timer.svg" />

                      <div class="heading1">
                        <div class="job-expire-in">Job expire in:</div>
                        <div class="aug-2021">${detail.endTime}</div>
                      </div>
                    </div>
                  </div>
                  <div class="post-date-experience1">
                    <div class="info2">
                      <img
                        class="wallet-icon"
                        alt=""
                        src="./public/wallet.svg"
                      />

                      <div class="heading2">
                        <div class="experience">Experience</div>
                        <div class="k-80kmonth">${detail.experience}</div>
                      </div>
                    </div>
                    <div class="info3">
                      <img
                        class="briefcase-icon"
                        loading="lazy"
                        alt=""
                        src="./public/briefcase.svg"
                      />

                      <div class="heading3">
                        <div class="education">Education</div>
                        <div class="graduation">${detail.qualification}</div>
                      </div>
                    </div>
                  </div>
                  <div class="post-date-experience2">
                    <div class="info4">
                      <img
                        class="users-duotone-1-icon"
                        loading="lazy"
                        alt=""
                        src="./public/usersduotone-1.svg"
                      />

                      <div class="heading4">
                        <div class="number-of-recruitment">
                          Number of recruitment
                        </div>
                        <div class="kkmonth">${detail.numberRecruits}</div>
                      </div>
                    </div>
                    <div class="info5">
                      <img
                        class="stack-icon"
                        loading="lazy"
                        alt=""
                        src="./public/stack.svg"
                      />

                      <div class="heading5">
                        <div class="job-level">Job Level:</div>
                        <div class="entry-level">${detail.level}</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="job-information-child"></div>
              <div class="share-this-job-parent">
                <div class="share-this-job">Share this job:</div>
                <button id="copyButton" class="social-media">
    <div class="social-button">
      <img
        class="linksimple-icon"
        alt=""
        src="./public/linksimple.svg"
      />
      <div class="copy-links">Copy Links</div>
    </div>
  </button>
              </div>
            </div>
          </div>
        </div>
      </section>
      <footer class="footer">
        <div class="footer-container">
          <div class="jendo">
            <div class="logo1">
              <img
                class="briefcase-1-icon1"
                alt=""
                src="./public/briefcase-1-1.svg"
              />

              <h2 class="jobpilot">Job Find</h2>
            </div>
            <div class="contact-info">
              <div class="phone-number">
                <div class="phone-number1">0825700246</div>
              </div>
            </div>
          </div>
          <div class="university-info">
            <div class="da-nang-university">
              Da Nang University of Science and Technology
            </div>
          </div>
        </div>
        <div class="footer-links">
          <div class="support-and-social">
            <div class="support">
              <h3 class="support1">Support</h3>
              <div class="link">
                <div class="footer-link">
                  <img
                    class="fiarrow-right-icon1"
                    alt=""
                    src="./public/fiarrowright1.svg"
                  />

                  <div class="footer-link1">Faqs</div>
                </div>
                <div class="footer-link2">
                  <img
                    class="fiarrow-right-icon2"
                    alt=""
                    src="./public/fiarrowright1.svg"
                  />

                  <div class="footer-link3">Privacy Policy</div>
                </div>
                <div class="footer-link4">
                  <img
                    class="fiarrow-right-icon3"
                    alt=""
                    src="./public/fiarrowright1.svg"
                  />

                  <div class="footer-link5">Terms & Conditions</div>
                </div>
              </div>
            </div>
            <div class="connect-us-parent">
              <h3 class="connect-us">Connect us!</h3>
              <div class="social-icons">
                <img
                  class="social-icon-graphic"
                  loading="lazy"
                  alt=""
                  src="./public/vector.svg"
                />

                <img
                  class="youtube-1-icon"
                  loading="lazy"
                  alt=""
                  src="./public/youtube-1.svg"
                />

                <img
                  class="instagram-1-icon"
                  loading="lazy"
                  alt=""
                  src="./public/instagram-1.svg"
                />

                <img
                  class="twitter-1-icon"
                  loading="lazy"
                  alt=""
                  src="./public/twitter-1.svg"
                />
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <div id="framePopup" class="popup-overlay" style="display: none;   overflow-y: auto";>
    
    <jsp:include page="CVframe.jsp"></jsp:include> 
    </div>
        <%@ page import="com.home.model.*" %>
    <%
    user_acc acc = (user_acc) session.getAttribute("acc");
    String username = (acc != null) ? acc.getName() : "";
	%>
<script>
    var sessionUsername = "<%= username %>";
</script>
 <script>
    document.getElementById('copyButton').addEventListener('click', function() {
      const url = window.location.href;
      navigator.clipboard.writeText(url).then(function() {
        alert('Link has been copied to clipboard!');
      }, function(err) {
        console.error('Could not copy text: ', err);
      });
    });
  </script>
    <script src="./Assets/JavaScript/CVpopup.js?v=4"></script>
  </body>
</html>
