<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>User List</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./Assets/CSS/usercvlist.css?v=6">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
</style>
<script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<a href="adminhome" class="styled-link" title="Back">Back to Admin Dashboard</a>
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>Users</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>						
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Phone</th>
						<th>Birthday</th>
						<th>Gender</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${userList}" var="o">
					<tr>
						 	<td><c:out value="${o.id}" /></td>
				            <td><c:out value="${o.name}" /></td>
				            <td><c:out value="${o.email}" /></td>
				            <td><c:out value="${o.pass}" /></td>
				            <td><c:out value="${o.mobile}" /></td>
				            <td><c:out value="${o.birthday}" /></td>
				            <td><c:out value="${o.gender}" /></td>
						<td>
							 <a href="#editEmployeeModal" class="edit" data-toggle="modal"
       onclick="setEditValues('${o.id}', '${o.name}', '${o.email}', '${o.pass}', '${o.mobile}', '${o.birthday}', '${o.gender}')">
        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
    </a>
							 <a href="#deleteEmployeeModal" class="delete" data-toggle="modal" onclick="setDeleteId(${o.id})"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
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
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="addnewuser" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">Add User</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Name</label>
						<input name="fullname" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input name="email" type="email" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Password</label>
						<input name="pass" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input name="phone" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Birthday</label>
						<input name="birthday" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Gender</label>
						<input name="gender" type="text" class="form-control" required>
					</div>			

				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-success" value="Add">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="edituser" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Edit User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID</label>
                        <input name="id" id="editId" type="text" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input name="fullname" id="editName" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input name="email" id="editEmail" type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <textarea name="pass" id="editPass" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input name="phone" id="editMobile" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Birthday</label>
                        <input name="birthday" id="editBirthday" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <input name="gender" id="editGender" type="text" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="deleteForm" action="deleteuser" method="post">
                <input type="hidden" id="deleteId" name="deleteId" value="">
                <div class="modal-header">                        
                    <h4 class="modal-title">Delete User</h4>
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
    function setEditValues(id, name, email, pass, mobile, birthday, gender) {
        document.getElementById('editId').value = id;
        document.getElementById('editName').value = name;
        document.getElementById('editEmail').value = email;
        document.getElementById('editPass').value = pass;
        document.getElementById('editMobile').value = mobile;
        document.getElementById('editBirthday').value = birthday;
        document.getElementById('editGender').value = gender;
    }
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
		// Cập nhật số liệu hiển thị trong thông điệp
		hintText.innerHTML = `Showing <b>${Math.min(totalApplicants, currentPage * applicantsPerPage)}</b> out of <b>${totalApplicants}</b> entries`;
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
	if(status=="failed")
		{
		swal("Failed","Error occurred","error");
		}
	if(status=="duplicate_email")
	{
	swal("Failed","The email you entered already exists","error");
	}
	if(status=="duplicate_phone")
	{
	swal("Failed","The phone number you entered already exists","error");
	}
	if(status=="success")
	{
	swal("Success","Account successfully created","success");
	}
	</script>
</body>
</html>