// Thêm chức năng giới hạn số ký tự và cập nhật thanh đếm vào ô "Additional information"
var textarea = document.querySelector(".textfield6 textarea");
var charCount = document.querySelector(".textfield6 #char-count");

textarea.addEventListener("input", function() {
    var count = textarea.value.length;
    charCount.textContent = count + " / 500"; // Cập nhật số ký tự hiện tại

    if (count > 500) {
        textarea.value = textarea.value.substring(0, 500); // Hạn chế số ký tự nhập vào
        charCount.textContent = "500 / 500";
    }
});