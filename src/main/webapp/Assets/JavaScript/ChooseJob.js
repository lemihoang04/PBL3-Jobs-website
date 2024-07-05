document.addEventListener("DOMContentLoaded", function() {
    const inputField = document.querySelector('.this-is-placeholder1');
    const dropdownContainer = document.createElement('div');
    dropdownContainer.classList.add('dropdown-container');
    inputField.parentElement.appendChild(dropdownContainer);

    const professions = [
        "Hành chính - Thư ký",
        "Khách sạn - Nhà hàng - Du lịch",
        "Bán sỉ - Bán lẻ - Quản lý cửa hàng",
        "Marketing",
        "Bán hàng - Kinh doanh",
        "Kế toán",
        "Tài chính - Đầu tư - Chứng Khoản",
        "Kiểm toán",
        "Khoa học - Kỹ thuật",
        "Nghề nghiệp khác",
        "Các Nghề Khác :",
        "Hóa học - Hóa sinh",
        "Môi trường - Xử lý chất thải",
        "Thực phẩm - Đồ uống",
        "Chăn nuôi - Thú y",
        "Cơ khí - Ô tô - Tự động hóa",
        "Công nghệ thực phẩm - Dinh dưỡng",
        "Lao động phổ thông",
        "Phi chính phủ - Phi lợi nhuận",
        "Truyền hình - Báo chí - Biên tập",
        "Xuất bản - In ấn",
        "Thực tập sinh"
    ];

    let selectedCount = 0;

    inputField.addEventListener("focus", function() {
        renderDropdown();
        dropdownContainer.style.display = 'block';
    });

    inputField.addEventListener("input", function() {
        const inputValue = inputField.value.toLowerCase();
        const filteredProfessions = professions.filter(profession =>
            profession.toLowerCase().includes(inputValue)
        );
        renderDropdown(filteredProfessions);
    });

    inputField.addEventListener("keydown", function(event) {
        if (event.key === "Enter") {
            event.preventDefault();
            inputField.value = "";
            dropdownContainer.style.display = 'none';
        }
    });

    function renderDropdown(filteredOptions = professions) {
        dropdownContainer.innerHTML = '';
        selectedCount = 0; // Reset số lượng đã chọn khi render lại dropdown
        filteredOptions.forEach(option => {
            const checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.value = option;
            checkbox.id = option.replace(/ /g, "-"); // Tạo id từ tên option

            const label = document.createElement('label');
            label.textContent = option;
            label.setAttribute("for", option.replace(/ /g, "-")); // Liên kết label với checkbox

            dropdownContainer.appendChild(checkbox);
            dropdownContainer.appendChild(label);
            dropdownContainer.appendChild(document.createElement('br')); // Tạo dòng mới

            // Thêm sự kiện khi chọn checkbox
            checkbox.addEventListener("change", function() {
                if (this.checked) {
                    if (selectedCount >= 3) {
                        this.checked = false; // Không cho chọn nếu đã chọn 3 dữ liệu
                        return;
                    }
                    selectedCount++;
                    label.classList.add('selected'); // Thêm class để sáng lên ô đã chọn
                } else {
                    selectedCount--;
                    label.classList.remove('selected'); // Loại bỏ class khi hủy chọn
                }
                updateInputField();
            });
        });
    }

    function updateInputField() {
        const selectedOptions = dropdownContainer.querySelectorAll("input[type='checkbox']:checked");
        const selectedValues = Array.from(selectedOptions).map(option => option.value);
        inputField.value = selectedValues.join(", ");
    }

    document.addEventListener("click", function(event) {
        if (!dropdownContainer.contains(event.target) && event.target !== inputField) {
            dropdownContainer.style.display = 'none';
        }
    });
});
