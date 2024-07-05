<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
	<title>Job Find</title>
    <link rel="stylesheet" href="./Assets/CSS/global_joblist1.css" />
    <link rel="stylesheet" href="./Assets/CSS/job_list1.css?v=6" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
  </head>
  <body>
    <div class="job-list">
      <jsp:include page="menu1.jsp"></jsp:include>
      <div class="breadcrumb">
        <div class="label">Find Job</div>
        <div class="process-steps">
          <div class="process">
            <div class="label1">Home</div>
            <div class="div">/</div>
            <div class="label2">Label</div>
            <div class="div1">/</div>
            <div class="label3">Label</div>
            <div class="div2">/</div>
            <div class="label4">Label</div>
            <div class="div3">/</div>
            <div class="label5">Label</div>
            <div class="div4">/</div>
            <div class="label6">Label</div>
            <div class="div5">/</div>
            <div class="label7">Label</div>
            <div class="div6">/</div>
            <div class="label8">Label</div>
            <div class="div7">/</div>
            <div class="label9">Find job</div>
          </div>
        </div>
      </div>
      <section class="content">
        <div class="filters">
          <div class="filters1">
            <form action="seach" method="post" class="adbance-filter">
              <div class="input-field">
                <img class="fisearch-icon" alt="" src="./public/fisearch.svg" />
                <input value="${txtS}" name="txt" type="text" placeholder="Search by: Job tittle" class="search-by-job">
              </div>
              <div class="devider"></div>
              <div class="input-field1">
                <img class="mappin-icon" alt="" src="./public/mapping.svg" />

                <input
                  value="${txtC}"
                  name="citytxt"
                  class="city-state-or"
                  placeholder="City, state or zip code"
                  type="text"
                />
                <div class="suggestions" id="suggestions"></div>
              </div>
              <script src="./Assets/JavaScript/dropmenu(city).js?v=2"></script>
              <div class="devider1"></div>
              <div class="input-field-input">
                <img class="briefcase-1-icon1" alt="" src="./public/briefcase-11.svg" />
                <input value="${txtJ}" name="jobtxt" type="text" id="jobInput" placeholder="Filter By Job" class="filter-by-job">
              </div>
              <div class="job-dropdown" id="jobDropdown">
                <div class="suggestions_Job" id="suggestions_Job"></div>
              </div>
            
              <script src="./Assets/JavaScript/dropmenu(job).js?v=6"></script>
              <button class="button1">
                <div class="primary1">Find Job</div>
              </button>
            </form>
          </div>
          <div class="results">
            <div class="job-card">
               <c:forEach items="${jobList}" var="o">
              <div class="job">
                <div class="heading">
                  <div class="junior-graphic-designer"><a href="detail?jid=${o.id}" style="text-decoration:none" title="${o.jobTitle}">
                    ${o.jobTitle}
                  </a></div>
                  <div class="job-types">
                    <div class="type">
                      <div class="internship">${o.workWay}</div>
                    </div>
                  </div>
                </div>
                <div class="salary-20000-">Salary: ${o.salary}</div>
                <div class="company">
                  <div class="employers-logo">
                    <img
                      class="employers-logo-icon"
                      loading="lazy"
                      alt=""
                      src="${o.picLink}"
                    />
                  </div>
                  <div class="info">
                    <div class="google-inc" title="${o.company}">${o.company}</div>
                    <div class="loaction">
                      <img
                        class="mappin-icon1"
                        alt=""
                        src="./public/mappin-1.svg"
                      />

                      <div class="dhaka-bangladesh" title="${o.city}">${o.city}</div>
                    </div>
                  </div>
                </div>
              </div>
              </c:forEach>
            </div>
            <div class="footer-navigation">
              <div class="pagination">
                <button class="icon-button" id="prevPage">
                  <img
                    class="fiarrow-right-icon"
                    alt=""
                    src="./public/back-arrow.svg"
                  />
                </button>
                <div class="pages">
                  <div class="pagination1">
                    <div class="page-number">01</div>
                  </div>
                  <!-- <div class="pagination2">
                    <div class="div8">02</div>
                  </div>
                  <div class="pagination3">
                    <div class="div9">03</div>
                  </div>
                  <div class="pagination4">
                    <div class="div10">04</div>
                  </div>
                  <div class="pagination5">
                    <div class="div11">05</div>
                  </div> -->
                </div>
                <button class="icon-button1" id="nextPage">
                  <img
                    class="fiarrow-right-icon1"
                    alt=""
                    src="./public/fiarrowright-1.svg"
                  />
                </button>
              </div>
            </div>
            <!-- <script>
              document.addEventListener("DOMContentLoaded", function () {
                const prevButton = document.getElementById("prevPage");
                const nextButton = document.getElementById("nextPage");
                const pages = document.querySelector(".pages").children;
          
                let currentPage = 1;
                const totalPages = pages.length;
                const itemsPerPage = 15; // Change number of items per page here
          
                prevButton.addEventListener("click", function () {
                  if (currentPage > 1) {
                    currentPage--;
                    updatePagination();
                  }
                });
          
                nextButton.addEventListener("click", function () {
                  if (currentPage < totalPages) {
                    currentPage++;
                    updatePagination();
                  }
                });
          
                for (let i = 0; i < totalPages; i++) {
                  pages[i].addEventListener("click", function () {
                    currentPage = i + 1;
                    updatePagination();
                  });
                }
          
                function updatePagination() {
                  const jobs = document.querySelectorAll('.job-card > div');
                  const startIndex = (currentPage - 1) * itemsPerPage;
                  const endIndex = Math.min(startIndex + itemsPerPage, jobs.length);
          
                  for (let i = 0; i < jobs.length; i++) {
                    if (i >= startIndex && i < endIndex) {
                      jobs[i].style.display = 'block';
                    } else {
                      jobs[i].style.display = 'none';
                    }
                  }
          
                  for (let i = 0; i < totalPages; i++) {
                    const page = pages[i];
                    if (i + 1 === currentPage) {
                      page.classList.add("active-page");
                    } else {
                      page.classList.remove("active-page");
                    }
                  }
                }
          
                // Show the initial page
                updatePagination();
              });
            </script> -->
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
            <div class="contact-details">
              <div class="phone-number">
                <div class="div12">0825700246</div>
              </div>
            </div>
          </div>
          <div class="credits">
            <div class="da-nang-university">
              Da Nang University of Science and Technology
            </div>
          </div>
        </div>
        <div class="footer-links">
          <div class="support-parent">
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
            <div class="social-media">
              <h3 class="connect-us">Connect us!</h3>
              <div class="social-icons">
                <img
                  class="social-icon"
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
    <script src="./Assets/JavaScript/numslider.js?v=2"></script>
  </body>
</html>
