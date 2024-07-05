document.addEventListener('DOMContentLoaded', function() {
    const cityInput = document.querySelector('.city-state-or');
    const suggestionsContainer = document.getElementById('suggestions');

    const cities = [
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

    function showSuggestions(inputText) {
        suggestionsContainer.innerHTML = '';
        const filteredCities = cities.filter(city => city.toLowerCase().includes(inputText.toLowerCase()));
        filteredCities.forEach(city => {
            const div = document.createElement('div');
            div.textContent = city;
            div.classList.add('suggestion-item');
            div.addEventListener('click', () => {
                cityInput.value = city;
                suggestionsContainer.style.display = 'none';
            });
            suggestionsContainer.appendChild(div);
        });
        if (filteredCities.length > 0 && !filteredCities.includes(inputText.trim())) {
            suggestionsContainer.style.display = 'block';
        } else {
            suggestionsContainer.style.display = 'none';
        }
    }

    cityInput.addEventListener('click', function() {
        showSuggestions(cityInput.value);
    });

    cityInput.addEventListener('input', function() {
        const inputText = this.value.trim();
        showSuggestions(inputText);
    });

    document.addEventListener('click', function(event) {
        if (!event.target.matches('.city-state-or')) {
            suggestionsContainer.style.display = 'none';
        }
    });
});
