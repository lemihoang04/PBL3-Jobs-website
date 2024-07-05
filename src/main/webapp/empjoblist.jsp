<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_postjob.css" />
    <link rel="stylesheet" href="./Assets/CSS/postjob.css?v=1" />
    <link rel="stylesheet" href="./Assets/CSS/usercvlist.css?v=1" />
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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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

            <h1 class="post-a-job">Job List</h1>
          </div>
        </section>
        <section class="frame-wrapperl">
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>Jobs</b></h2>
					</div>
					<!-- <div class="col-sm-6">
						<a href="./Admin_QL.html" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>						
					</div> -->
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Job Title</th>
						<th>Date Post</th>
						<th>Submission Date</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${joblist}" var="o">
					<tr class="Table" data-id="${o.id}">
						<td><c:out value="${o.id}"/></td>
						<td><c:out value="${o.jobTitle}"/></td>
						<td><c:out value="${o.startTime}"/></td>
						<td><c:out value="${o.endTime}"/></td>
						<td><c:out value="${o.status}"/></td>
						<td>
							<a href="empjobeditload?jid=${o.id}" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deleteEmployeeModal" class="delete" data-toggle="modal" onclick="setDeleteId(${o.id})"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<script>
			document.addEventListener("DOMContentLoaded", function () {
			    const rows = document.querySelectorAll("tbody tr");

			    rows.forEach(function (row) {
			        const cells = row.querySelectorAll("td:not(.action-column)"); 

			        cells.forEach(function (cell) {
			            cell.addEventListener("click", function (event) {
			                if (event.target.nodeName.toLowerCase() === 'td') {
			                    const jobId = row.getAttribute("data-id");
			                    const servletUrl = "viewdetail?jid=" + jobId; // Replace with your servlet URL
			                    window.location.href = servletUrl;
			                }
			            });
			        });
			    });
			});
			</script>
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
    <!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="deleteForm" action="empjobdelete" method="post">
                <input type="hidden" id="deleteId" name="deleteId" value="">
                <div class="modal-header">                        
                    <h4 class="modal-title">Delete Job</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">                    
                    <p>Are you sure you want to delete this record?</p>
                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-danger" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>
<script>
function setDeleteId(id) {
    document.getElementById("deleteId").value = id;
}
// Submit form when "Delete" button is clicked

</script>
    <script>
	document.addEventListener("DOMContentLoaded", function() {
	const rows = document.querySelectorAll("tbody tr");
	const pagination = document.querySelector(".pagination");
	const prevPageButton = document.getElementById("Prev");
	const nextPageButton = document.getElementById("Next");

	const totalApplicants = rows.length;
	const applicantsPerPage = 5; // Số lượng dữ liệu trên mỗi trang
	const maxDisplayPages = 5; // Số trang tối đa hiển thị
	let totalPages = Math.ceil(totalApplicants / applicantsPerPage);
	let currentPage = 1;
	// Tạo thẻ div cho thông điệp hiển thị số liệu
    const hintText = document.createElement("div");
    hintText.classList.add("hint-text");
    pagination.parentNode.insertBefore(hintText, pagination.nextSibling); 
	function renderPagination() {
		pagination.innerHTML = "";
		let startPage, endPage;

		if (totalPages <= maxDisplayPages) {
		startPage = 1;
		endPage = totalPages;
		} else {
		if (currentPage <= Math.floor(maxDisplayPages / 2) + 1) { // Trang gần đầu danh sách
			startPage = 1;
			endPage = maxDisplayPages;
		} else if (currentPage + Math.floor(maxDisplayPages / 2) >= totalPages) { // Trang gần cuối danh sách
			startPage = totalPages - maxDisplayPages + 1;
			endPage = totalPages;
		} else { // Trường hợp còn lại
			startPage = currentPage - Math.floor(maxDisplayPages / 2);
			endPage = currentPage + Math.floor(maxDisplayPages / 2);
		}
		}

		const prevButton = document.createElement("li");
		prevButton.textContent = "Previous";
		prevButton.classList.add("page-item");
		if (currentPage === 1) {
		prevButton.classList.add("disabled");
		} else {
		prevButton.addEventListener("click", function() {
			goToPage(currentPage - 1);
		});
		}
		pagination.appendChild(prevButton);

		for (let i = startPage; i <= endPage; i++) {
		const button = document.createElement("li");
		button.textContent = i;
		button.classList.add("page-item");
		if (i === currentPage) {
			button.classList.add("active");
		}
		button.addEventListener("click", function() {
			goToPage(i);
		});
		pagination.appendChild(button);
		}

		const nextButton = document.createElement("li");
		nextButton.textContent = "Next";
		nextButton.classList.add("page-item");
		if (currentPage === totalPages) {
		nextButton.classList.add("disabled");
		} else {
		nextButton.addEventListener("click", function() {
			goToPage(currentPage + 1);
		});
		}
		pagination.appendChild(nextButton);
	}

	function goToPage(pageNumber) {
		currentPage = pageNumber;

		const startIndex = (currentPage - 1) * applicantsPerPage;
		const endIndex = Math.min(startIndex + applicantsPerPage, totalApplicants);
		rows.forEach((row, index) => {
		if (index >= startIndex && index < endIndex) {
			row.style.display = "table-row";
		} else {
			row.style.display = "none";
		}
		});

		totalPages = Math.ceil(totalApplicants / applicantsPerPage);
		renderPagination();
	}

	renderPagination();
	goToPage(1);
	});
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="success")
		{
		swal("Success","Update Job Success","success");
		}
	
	</script>
  </body>
</html>
