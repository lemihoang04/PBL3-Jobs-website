document.addEventListener("DOMContentLoaded", function() {
  var dropdown = document.querySelector('.dropdown');
  var input = dropdown.querySelector('input');
  var dropdownContent = dropdown.querySelector('.dropdown-content');
  
  // Dữ liệu cho bảng drop-down
  var employmentTypes = [
    "Toàn thời gian cố định",
    "Toàn thời gian tạm thời",
    "Bán thời gian cố định",
    "Bán thời gian tạm thời",
    "Theo hợp đồng tư vấn",
    "Thực tập",
    "Khác"
  ];
  
  // Tạo các mục cho bảng drop-down từ dữ liệu đã khai báo
  employmentTypes.forEach(function(type) {
    var item = document.createElement('div');
    item.classList.add('item');
    item.textContent = type;
    dropdownContent.appendChild(item);
  });
  // Xử lý sự kiện khi người dùng gõ vào ô input
  input.addEventListener('input', function() {
    var inputValue = input.value.toLowerCase(); 
    var filteredTypes = employmentTypes.filter(function(type) {
      return type.toLowerCase().includes(inputValue); 
    });
    dropdownContent.innerHTML = '';
    filteredTypes.forEach(function(type) {
      var item = document.createElement('div');
      item.classList.add('item');
      item.textContent = type;
      dropdownContent.appendChild(item);
    });
    dropdownContent.classList.add('show');
  });

  // Xử lý sự kiện khi click vào class dropdown
  dropdown.addEventListener('click', function() {
    dropdownContent.classList.toggle('show');
  });
  
  // Xử lý sự kiện khi chọn một mục trong bảng drop-down
  dropdownContent.addEventListener('mousedown', function(e) {
    if (e.target.classList.contains('item')) {
      var selectedValue = e.target.textContent;
      input.value = selectedValue;
      dropdownContent.classList.remove('show');
    }
  });
  
  // Đóng drop down nếu click bên ngoài
  document.addEventListener('click', function(e) {
    if (!dropdown.contains(e.target) && e.target !== input) {
      dropdownContent.classList.remove('show');
    }
  });
});