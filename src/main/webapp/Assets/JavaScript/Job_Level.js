document.addEventListener("DOMContentLoaded", function() {
    var dropdown1 = document.querySelector('.dropdown3');
    var input1 = dropdown1.querySelector('input');
    var dropdownContent1 = dropdown1.querySelector('.dropdown1-content');
    
    // Dữ liệu cho bảng drop-down
    var degreeTypes = [
        "Quản lý cấp cao",
        "Quản lý cấp trung",
        "Quản lý nhóm - giám sát",
        "Chuyên gia",
        "Chuyên viên - nhân viên",
        "Cộng tác viên"
    ];
    
    // Tạo các mục cho bảng drop-down từ dữ liệu đã khai báo
    degreeTypes.forEach(function(type) {
      var item = document.createElement('div');
      item.classList.add('item');
      item.textContent = type;
      dropdownContent1.appendChild(item);
    });
    
    // Xử lý sự kiện khi người dùng gõ vào ô input
    input1.addEventListener('input', function() {
      var inputValue = input1.value.toLowerCase(); 
      var filteredTypes = degreeTypes.filter(function(type) {
        return type.toLowerCase().includes(inputValue); 
      });
      dropdownContent1.innerHTML = '';
      filteredTypes.forEach(function(type) {
        var item = document.createElement('div');
        item.classList.add('item');
        item.textContent = type;
        dropdownContent1.appendChild(item);
      });
      dropdownContent1.classList.add('show');
    });
  
    // Xử lý sự kiện khi click vào class dropdown1
    dropdown1.addEventListener('click', function() {
      dropdownContent1.classList.toggle('show');
    });
    
    // Xử lý sự kiện khi chọn một mục trong bảng drop-down
    dropdownContent1.addEventListener('mousedown', function(e) {
      if (e.target.classList.contains('item')) {
        var selectedValue = e.target.textContent;
        input1.value = selectedValue;
        dropdownContent1.classList.remove('show');
      }
    });
    
    // Đóng drop down nếu click bên ngoài
    document.addEventListener('click', function(e) {
      if (!dropdown1.contains(e.target) && e.target !== input1) {
        dropdownContent1.classList.remove('show');
      }
    });
  });
  