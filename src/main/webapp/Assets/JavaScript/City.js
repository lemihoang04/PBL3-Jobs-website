document.addEventListener("DOMContentLoaded", function() {
    var dropdown1 = document.querySelector('.input6');
    var input1 = dropdown1.querySelector('input');
    var dropdownContent1 = dropdown1.querySelector('.dropdown1-content');
    
    // Dữ liệu cho bảng drop-down
    var degreeTypes = [
        'Hà Nội ',
        'TP. Hồ Chí Minh ',
        'Đà Nẵng ',
        'Hải Phòng ',
        'Cần Thơ ',
        'Hải Dương ',
        'Bà Rịa - Vũng Tàu ',
        'Biên Hòa ',
        'Buôn Ma Thuột ',
        'Bắc Giang ',
        'Bắc Kạn ',
        'Bắc Ninh ',
        'Bến Tre ',
        'Cao Bằng ',
        'Cà Mau ',
        'Cam Ranh ',
        'Cam Phả ',
        'Cẩm Phả ',
        'Cao Lãnh ',
        'Châu Đốc ',
        'Điện Biên Phủ ',
        'Đà Lạt ',
        'Đồng Hới ',
        'Hà Giang ',
        'Hà Tiên ',
        'Hà Tĩnh ',
        'Hạ Long ',
        'Hội An ',
        'Hoà Bình ',
        'Huế ',
        'Kon Tum ',
        'Lạng Sơn ',
        'Lào Cai ',
        'Long Xuyên ',
        'Móng Cái ',
        'Mỹ Tho ',
        'Nam Định ',
        'Nha Trang ',
        'Ninh Bình ',
        'Ninh Thuận ',
        'Phan Rang - Tháp Chàm ',
        'Phan Thiết ',
        'Phủ Lý ',
        'Phú Quốc ',
        'Phú Thọ ',
        'Phú Yên ',
        'Quảng Ngãi ',
        'Quảng Trị ',
        'Rạch Giá ',
        'Sóc Trăng ',
        'Sơn La ',
        'Thái Bình ',
        'Thái Nguyên ',
        'Thanh Hóa ',
        'Tuy Hòa ',
        'Tây Ninh ',
        'Thủ Dầu Một ',
        'Trà Vinh ',
        'Tuyên Quang ',
        'Uông Bí ',
        'Vĩnh Long ',
        'Vĩnh Yên ',
        'Việt Trì ',
        'Vinh ',
        'Vũng Tàu ',
        'Yên Bái ',
        'Đồng Hới ',
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
  