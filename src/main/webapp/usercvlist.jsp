<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_userinform.css" />
    <link rel="stylesheet" href="./Assets/CSS/userinform.css?v=2" />
    <link rel="stylesheet" href="./Assets/CSS/usercvlist.css?v=5" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    

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
      <div class="page-structure">
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
        </header>
        <div class="user-details">
          <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>CVs</b></h2>
					</div>
					
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th style="width: 2%;">Id</th>
						<th style="width: 20%;">Job Title</th>
						<th style="width: 10%;">Time</th>
						<th style="width: 20%;">CV File</th>
						<th style="width: 23%;">Description</th>
						<th style="width: 10%;">Status</th>
						<th style="width: 5%;">Actions</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${cvlist}" var="o">
					<tr>
						<td><c:out value="${o.id}" /></td>
						<td><c:out value="${o.jobTitle}" /></td>
						<td><c:out value="${o.time}" /></td>
						<td><a href="${o.path}">${o.filename}</a></td>
						<td><c:out value="${o.description}" /></td>
						<td><c:out value="${o.status}" /></td>
						<td>
							<a href="usercveditload?cvid=${o.id}" class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deleteEmployeeModal" class="delete" data-toggle="modal" onclick="setDeleteId(${o.id})"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div class="clearfix">

			</div>
		</div>
	</div>        
</div>
        </div>
        <div class="content-dividers2">
          <div class="line3"></div>
        </div>
          </div>
        </div>
      </div>
    </div>
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="deleteForm" action="usercvdelete" method="post">
                <input type="hidden" id="deleteId" name="deleteId" value="">
                <div class="modal-header">                        
                    <h4 class="modal-title">Delete CV</h4>
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
