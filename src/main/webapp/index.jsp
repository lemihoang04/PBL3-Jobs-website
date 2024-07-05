<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
	<title>Job Find</title>
    <link rel="stylesheet" href="./Assets/CSS/global_home.css?v=2" />
    <link rel="stylesheet" href="./Assets/CSS/index.css?v=3" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
    
  </head>
  <body>
    <div class="homepage">
      <jsp:include page="menu1.jsp"></jsp:include>
      <section class="job-search-area-parent">
        <div class="job-search-area">
          <div class="search-bar">
          <form action="seach" method="post">
            <div class="search-fields">
              <h1 class="find-a-job">Find a job that suits your skills.</h1>
              <div class="search">
                <div class="input-field-input">
                  <img
                    class="fisearch-icon"
                    alt=""
                    src="./public/fisearch.svg"
                  />

                  <input
                    name="txt"
                    class="job-tittle-keyword"
                    style="border: none"
                    placeholder="Job tittle, Keyword..."
                    type="text"
                  />
                </div>
                <div class="search-child"></div>
                <div class="input-field-input1">
                  <img
                    class="fimap-pin-icon"
                    alt=""
                    src="./public/fimappin.svg"
                  />

                  <input name="citytxt" type="text" style="border: none" placeholder="Your Location" class="job-tittle-keyword1">
                </div>
                <div class="search-item"></div>
                <div class="job-filter-area">
                  <div class="input-field-input2">
                    <div class="filter-icon-area">
                      <img
                        class="briefcase-1-icon1"
                        alt=""
                        src="./public/briefcase-1-1.svg"
                      />
                    </div>
                    <input name="jobtxt" type="text" style="border: none" placeholder="Filter By Job" class="filter-by-job">

                  </div>
                  <button class="button1">
                    <div class="primary1">Find Job</div>
                  </button>
                </div>
              </div>
            </div>
            </form>
            <div class="search-illustration">
              <img
                class="illustration-icon"
                loading="lazy"
                alt=""
                src="./public/illustration.svg"
              />
            </div>
          </div>
          <div class="job-suggestions">
            <div class="suggestion">Suggestion:</div>
            <div class="designer">Designer,</div>
            <div class="programing">Programing,</div>
            <div class="video">Video,</div>
            <div class="animation">Animation.</div>
          </div>
        </div>
        <div class="job-features">
          <div class="fun-fact">
            <div class="feature">
              <div class="icon">
                <img
                  class="briefcase-duotone-1-icon"
                  loading="lazy"
                  alt=""
                  src="./public/briefcaseduotone-1.svg"
                />
              </div>
              <div class="info">
                <div class="star-system">${jobnum}</div>
                <div class="live-job">Live Job</div>
              </div>
            </div>
            <div class="feature1">
              <button class="icon1">
                <img
                  class="buildings-duotone-1-icon"
                  alt=""
                  src="./public/buildingsduotone-1.svg"
                />
              </button>
              <div class="info1">
                <div class="div">${employernum}</div>
                <div class="companies">Companies</div>
              </div>
            </div>
            <div class="feature2">
              <button class="icon2">
                <img
                  class="users-duotone-1-icon"
                  alt=""
                  src="./public/usersduotone-1.svg"
                />
              </button>
              <div class="info2">
                <div class="div1">${usernum}</div>
                <div class="candidates">Candidates</div>
              </div>
            </div>
            <div class="feature3">
              <div class="icon3">
                <img
                  class="briefcase-duotone-1-icon1"
                  alt=""
                  src="./public/briefcaseduotone-1.svg"
                />
              </div>
              <div class="info3">
                <div class="div2">${newjobnum}</div>
                <div class="new-jobs">New Jobs</div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="featured-job">
        <div class="heading">
          <h1 class="featured-job1">Newest Job</h1>
          <a href="listjob" style="text-decoration:none" class="button2">
            <b class="primary2">View All</b>
            <img
              class="fiarrow-right-icon"
              alt=""
              src="./public/fixarrowright.svg"
            />
          </a>
        </div>
        <div class="octopus-orchard">
        <c:forEach items="${jobList}" var="job" varStatus="loop" end="11">
          <div class="job">
            <div class="heading1">
              <div class="junior-graphic-designer"><a href="detail?jid=${job.id}" style="text-decoration:none" title="View JobDetail">${job.jobTitle}</a></div>
              <div class="type-wrapper">
                <div class="type">
                  <div class="internship">${job.workWay}</div>
                </div>
              </div>
            </div>
            <div class="salary-20000-">Salary: ${job.salary}</div>
            <div class="company">
              <div class="employers-logo">
                <img
                  class="employers-logo-icon"
                  loading="lazy"
                  alt=""
                  src="${job.picLink}"
                />
              </div>
              <div class="info4">
                <div class="google-inc">${job.company}</div>
                <div class="loaction">
                  <img class="mappin-icon" alt="" src="./public/mappin.svg" />

                  <div class="dhaka-bangladesh">${job.city}</div>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
      </section>
      <section class="most-popular-vacancies">
        <h1 class="most-popular-vacancies1">Most Popular Vacancies</h1>
        <div class="vacancies">
          <div class="vacancies1">
            <div class="anesthesiologists">Anesthesiologists</div>
            <div class="open-positions">45,904 Open Positions</div>
          </div>
          <div class="vacancies2">
            <div class="surgeons">Surgeons</div>
            <div class="open-positions1">50,364 Open Positions</div>
          </div>
          <div class="vacancies3">
            <div class="obstetricians-gynecologists">
              Obstetricians-Gynecologists
            </div>
            <div class="open-positions2">4,339 Open Positions</div>
          </div>
          <div class="vacancies4">
            <div class="maxillofacial-surgeons">Maxillofacial Surgeons</div>
            <div class="open-positions3">74,875 Open Positions</div>
          </div>
          <div class="vacancies5">
            <div class="software-developer">Software Developer</div>
            <div class="open-positions4">43359 Open Positions</div>
          </div>
          <div class="vacancies6">
            <div class="psychiatrists">Psychiatrists</div>
            <div class="open-positions5">18,599 Open Positions</div>
          </div>
          <div class="vacancies7">
            <div class="financial-manager">Financial Manager</div>
            <div class="open-positions6">61,391 Open Positions</div>
          </div>
          <div class="vacancies8">
            <div class="management-analysis">Management Analysis</div>
            <div class="open-positions7">93,046 Open Positions</div>
          </div>
          <div class="vacancies9">
            <div class="it-manager">IT Manager</div>
            <div class="open-positions8">50,963 Open Positions</div>
          </div>
        </div>
      </section>
      <section class="jendo-working-process">
        <div class="work-process-header">
          <h1 class="how-jobfind-work">How jobfind work</h1>
        </div>
        <div class="process-steps">
          <div class="create-account">
            <div class="icon4">
              <img
                class="user-plus-duotone-1-icon"
                loading="lazy"
                alt=""
                src="./public/userplusduotone-1.svg"
              />
            </div>
            <div class="create-account1">Create account</div>
          </div>
          <div class="cvresume">
            <button class="icon5">
              <img
                class="cloud-arrow-up-duotone-1-icon"
                alt=""
                src="./public/cloudarrowupduotone-1.svg"
              />
            </button>
            <div class="upload-cvresume">Upload CV/Resume</div>
            <img
              class="arrows-icon"
              loading="lazy"
              alt=""
              src="./public/arrows.svg"
            />

            <img class="arrows-icon1" alt="" src="./public/arrows-1.svg" />
          </div>
          <div class="find-suitable-job">
            <div class="icon6">
              <img
                class="magnifying-glass-plus-duotone-icon"
                loading="lazy"
                alt=""
                src="./public/magnifyingglassplusduotone-1.svg"
              />
            </div>
            <div class="find-suitable-job1">Find suitable job</div>
          </div>
          <div class="apply-then">
            <button class="icon7">
              <img
                class="circle-wavy-check-duotone-1-icon"
                alt=""
                src="./public/circlewavycheckduotone-1.svg"
              />
            </button>
            <div class="apply-job">Apply job</div>
            <img class="arrows-icon2" alt="" src="./public/arrows-2.svg" />
          </div>
        </div>
      </section>
      <section class="category">
        <div class="heading13">
          <h1 class="popular-category">Popular category</h1>
          <button class="button3">
            <div class="primary3">View All</div>
            <img
              class="fiarrow-right-icon1"
              alt=""
              src="./public/fiarrowright.svg"
            />
          </button>
        </div>
        <div class="category-parent">
          <div class="category1">
            <div class="icon8">
              <img
                class="pen-nib-duotone-1-icon"
                loading="lazy"
                alt=""
                src="./public/pennibduotone-1@2x.png"
              />
            </div>
            <div class="info16">
              <div class="graphics-design">Graphics & Design</div>
              <div class="open-position">357 Open position</div>
            </div>
          </div>
          <div class="category2">
            <button class="icon9">
              <img
                class="code-duotone-1-icon"
                alt=""
                src="./public/codeduotone-1.svg"
              />
            </button>
            <div class="info17">
              <div class="code-programing">Code & Programing</div>
              <div class="open-position1">312 Open position</div>
            </div>
          </div>
          <div class="category3">
            <button class="icon10">
              <img
                class="megaphone-simple-duotone-1-icon"
                alt=""
                src="./public/megaphonesimpleduotone-1.svg"
              />
            </button>
            <div class="info18">
              <div class="digital-marketing">Digital Marketing</div>
              <div class="open-position2">297 Open position</div>
            </div>
          </div>
          <div class="category4">
            <button class="icon11">
              <img
                class="music-notes-duotone-1-icon"
                alt=""
                src="./public/musicnotesduotone-1.svg"
              />
            </button>
            <div class="info19">
              <div class="music-audio">Music & Audio</div>
              <div class="open-position3">204 Open position</div>
            </div>
          </div>
          <div class="category5">
            <button class="icon12">
              <img
                class="chart-bar-horizontal-duotone-1-icon"
                alt=""
                src="./public/chartbarhorizontalduotone-1@2x.png"
              />
            </button>
            <div class="info20">
              <div class="account-finance">Account & Finance</div>
              <div class="open-position4">167 Open position</div>
            </div>
          </div>
          <div class="category6">
            <div class="icon13">
              <img
                class="first-aid-kit-duotone-1-icon"
                loading="lazy"
                alt=""
                src="./public/firstaidkitduotone-1.svg"
              />
            </div>
            <div class="info21">
              <div class="health-care">Health & Care</div>
              <div class="open-position5">125 Open position</div>
            </div>
          </div>
        </div>
      </section>
      <footer class="footer">
        <div class="footer-content">
          <div class="jendo">
            <div class="logo1">
              <img
                class="briefcase-1-icon2"
                alt=""
                src="./public/briefcase-1-2.svg"
              />

              <h2 class="jobpilot">Job Find</h2>
            </div>
            <div class="data-router">
              <div class="phone-number">
                <div class="xxxxxxxxxx">0825700246</div>
              </div>
            </div>
          </div>
          <div class="university-info-area">
            <div class="da-nang-university">
              Da Nang University of Science and Technology
            </div>
          </div>
        </div>
        <div class="footer-link-area">
          <div class="support-and-social-area">
            <div class="support">
              <h3 class="support1">Support</h3>
              <div class="link">
                <div class="footer-link">
                  <img
                    class="fiarrow-right-icon2"
                    alt=""
                    src="./public/fiarrowright1.svg"
                  />

                  <div class="footer-link1">Faqs</div>
                </div>
                <div class="footer-link2">
                  <img
                    class="fiarrow-right-icon3"
                    alt=""
                    src="./public/fiarrowright1.svg"
                  />

                  <div class="footer-link3">Privacy Policy</div>
                </div>
                <div class="footer-link4">
                  <img
                    class="fiarrow-right-icon4"
                    alt=""
                    src="./public/fiarrowright1.svg"
                  />

                  <div class="footer-link5">Terms & Conditions</div>
                </div>
              </div>
            </div>
            <div class="social-media-area">
              <h3 class="connect-us">Connect us!</h3>
              <div class="social-media-icons">
                <img class="vector-icon" alt="" src="./public/vector.svg" />

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
                  alt=""
                  src="./public/twitter-1.svg"
                />
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </body>
</html>
