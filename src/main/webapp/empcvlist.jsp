<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_postjob.css" />
    <link rel="stylesheet" href="./Assets/CSS/postjob.css?v=2" />
    <link rel="stylesheet" href="./Assets/CSS/usercvlist.css?v=3" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <div class="posta-job-button" style="padding: 0 0 400px;">
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
      <div class="frame-main">
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

            <h1 class="post-a-job">Number of CVs: ${numcv}</h1>
          </div>
        </section>
        <section class="frame-wrapperl">
                  <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>CV</b></h2>
					</div>
					<!-- <div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>						
					</div> -->
				</div>
			</div>
	<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th style="width: 2%;">Id</th>
            <th style="width: 8%;">Candidate Name</th>
            <th style="width: 25%;">Job Title</th>
            <th style="width: 10%;">Time</th>
            <th style="width: 15%;">CV File</th>
            <th style="width: 20%;">Description</th>
            <th style="width: 10%;">Status</th>
            <th style="width: 5%;">Actions</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${cvlist}" var="o">
    <form id="form_${o.id}" action="empcvupdate" method="post">
        <tr>
            <td><c:out value="${o.id}"/></td>
            <td><c:out value="${o.user_name}"/></td>
            <td><c:out value="${o.jobTitle}" /></td>
            <td><c:out value="${o.time}" /></td>
            <td><a href="${o.path}">${o.filename}</a></td>
            <td><c:out value="${o.description}" /></td>
            <td>
                <select class="status-dropdown" name="status">
                    <option value="Pending" <c:if test="${o.status eq 'Pending'}">selected</c:if>>Pending</option>
                    <option value="Decline" <c:if test="${o.status eq 'Decline'}">selected</c:if>>Decline</option>
                    <option value="Approved" <c:if test="${o.status eq 'Approved'}">selected</c:if>>Approved</option>
                </select>
            </td>
            <td>
                <input type="hidden" name="id" value="${o.id}">
                <button type="submit" class="save" onclick="saveData(${o.id})"><i class="material-icons" data-toggle="tooltip" title="Save">&#xE161;</i></button>
                <a href="#" class="sendemail" data-toggle="modal" onclick="sendEmail('${o.id_user}', '${o.jobTitle}')"><i class="material-icons" data-toggle="tooltip" title="Send Email">&#xE0E1;</i></a>
            </td>
        </tr>
    </form>
</c:forEach>
    </tbody>
</table>
			<div class="clearfix">
				<div class="clearfix">
				<ul class="pagination">
					<li class="page-item disabled" id="Prev">Previous</li>
					<li class="page-item active">1</li>
					<li class="page-item" id="Next">Next</li>
				</ul>
			</div>
			</div>
		</div>
	</div>        
</div>
        </section>
        <div class="frame-wrapper3">
          <div class="frame-parent5">
            <div class="line-wrapper4">
              <div class="line8"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
    $(document).ready(function() {
        // Loop through each select element with the class "status-dropdown"
        $(".status-dropdown").each(function() {
            // Get the value of the selected option from the data attribute
            var selectedStatus = $(this).data("selected-status");
            // Set the selected option based on the value retrieved
            $(this).val(selectedStatus);
        });
    });
</script>
<script>
    function sendEmail(id, jobtitle) {
        var url = "sendemailload?uid=" + id + "&jobtitle=" + encodeURIComponent(jobtitle);
        window.location.href = url;
    }
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="success")
		{
		swal("Success","Send Email Success","success");
		}
	
	</script>
  </body>
</html>


