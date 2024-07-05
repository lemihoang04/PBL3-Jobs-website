<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
	<title>Dashboard</title>
    <link rel="stylesheet" href="./Assets/CSS/global_adminhome.css" />
    <link rel="stylesheet" href="./Assets/CSS/adminhome.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@500;600&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&display=swap"
    />
  </head>
  <body>
    <div class="dashboard">
      <header class="header">
        <div class="header-child"></div>
        <div class="navigation-content">
          <img
            class="briefcase-1-icon"
            loading="lazy"
            alt=""
            src="./public/briefcase-1.svg"
          />
        </div>
        <div class="admin-navigation">
          <div class="admin-menu">
            <h2 class="job-find">Job Find</h2>
            <div class="admin-submenu">
              <div class="admin">Admin</div>
            </div>
          </div>
        </div>
        <div class="user-profile">
          <b class="karthi-madesh">${admin_acc.name}</b>
        </div>
        <div class="navigation-content1">
          <a href="adminlogout" style="text-decoration:none" class="button2">
            <b class="primary2">Log Out</b>

          </a>
        </div>
        <!-- <img
          class="user-image-icon"
          loading="lazy"
          alt=""
          src="./public/user-avatar1.svg"
        /> -->
      </header>
      <section class="content">
        <div class="dashboard-information">
          <div class="dashboard-title">
            <h1 class="website-dashboard-manager">Website dashboard manager</h1>
          </div>
          <div class="metrics-overview">
            <a href="usercrudload" style="text-decoration:none" class="count">
              <div class="count-child"></div>
              <img
                class="application-details-icon"
                loading="lazy"
                alt=""
                src="./public/user-avatar1.svg"
              />

              <div class="recruitment-stats">
                <div class="candidate">Candidate</div>
                <div class="empty-state">
                  <b class="placeholder">${usernum}</b>
                </div>
              </div>
            </a>
            <a href="empcrudload" style="text-decoration:none"  class="count1">
              <div class="count-item"></div>
              <div class="bookmark-1-wrapper">
                <img
                  class="bookmark-1-icon"
                  loading="lazy"
                  alt=""
                  src="./public/bookmark-1.svg"
                />
              </div>
              <div class="employer-parent">
                <div class="employer">Employer</div>
                <div class="wrapper">
                  <b class="b">${employernum}</b>
                </div>
              </div>
            </a>
            <a href="jobcrudload" style="text-decoration:none" class="count2">
              <div class="count-inner"></div>
              <img
                class="briefcase-1-icon1"
                alt=""
                src="./public/briefcase-1-1.svg"
              />

              <div class="number-of-job">Jobs</div>
              <div class="empty-state1">
                <b class="placeholder1">
                  <span> </span>
                  <span class="span">${jobnum}</span>
                </b>
              </div>
            </a>
            <a href="admincrudload" style="text-decoration:none" class="count3">
              <div class="rectangle-div"></div>
              <div class="stack-wrapper">
                <img
                  class="stack-icon"
                  loading="lazy"
                  alt=""
                  src="./public/adminicon.png"
                />
              </div>
              <div class="cv-parent">
                <div class="cv">Admin</div>
                <div class="container">
                  <b class="b1">${adminnum}</b>
                </div>
              </div>
            </a>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>
