<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_jobdetail1.css?v=1" />
    <link rel="stylesheet" href="./Assets/CSS/jobdetail1.css?v=1" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
  </head>
  <body>
  
    <div class="job-detail">
      <section class="breadcrumb-wrapper">
        <div class="breadcrumb">
        <c:if test="${vision == 1}">
          <a href="empjobload" style="text-decoration:none" class="job-details">- Back to Job List -</a>
		</c:if>
		<c:if test="${vision == 2}">
          <a href="jobcrudload" style="text-decoration:none" class="job-details">- Back to Job List -</a>
		</c:if>
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
                <button class="social-media">
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
    </div>
  </body>
</html>
