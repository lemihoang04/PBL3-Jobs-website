document.addEventListener('DOMContentLoaded', function() {
    const jobInput = document.getElementById('jobInput');
    const jobSuggestionsContainer = document.getElementById('suggestions_Job');

    const jobList = [
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
        // Thêm các loại công việc khác vào đây
    ];

    function showJobSuggestions(inputText) {
        jobSuggestionsContainer.innerHTML = '';
        const filteredJobs = jobList.filter(job => job.toLowerCase().includes(inputText.toLowerCase()));
        filteredJobs.forEach(job => {
            const div = document.createElement('div');
            div.textContent = job;
            div.classList.add('dropdown-item'); // Thêm class dropdown-item
            div.addEventListener('click', () => {
                jobInput.value = job;
                jobSuggestionsContainer.style.display = 'none';
            });
            jobSuggestionsContainer.appendChild(div);
        });
        if (filteredJobs.length > 0 && !filteredJobs.includes(inputText.trim())) {
            jobSuggestionsContainer.style.display = 'block';
        } else {
            jobSuggestionsContainer.style.display = 'none';
        }
    }

    jobInput.addEventListener('click', function() {
        showJobSuggestions(jobInput.value);
    });

    jobInput.addEventListener('input', function() {
        const inputText = this.value.trim();
        showJobSuggestions(inputText);
    });

    document.addEventListener('click', function(event) {
        if (!event.target.matches('.filter-by-job')) {
            jobSuggestionsContainer.style.display = 'none';
        }
    });
});
