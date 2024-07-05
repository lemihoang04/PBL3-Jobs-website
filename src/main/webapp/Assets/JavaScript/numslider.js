document.addEventListener("DOMContentLoaded", function() {
        const rows = document.querySelector(".job-card");
        const pagination = document.querySelector(".pagination1");
        const prevPageButton = document.getElementById("prevPage");
        const nextPageButton = document.getElementById("nextPage");

        let totalApplicants = rows.children.length;
        const applicantsPerPage = 12; 
        let totalPages = Math.ceil(totalApplicants / applicantsPerPage);
        let currentPage = 1;

        function renderPagination() {
            pagination.innerHTML = "";

            // Xác định các trang để hiển thị
            let startPage, endPage;

            if (totalPages <= 5) { // Nếu tổng số trang nhỏ hơn hoặc bằng 5
                startPage = 1;
                endPage = totalPages;
            } else { // Trường hợp tổng số trang lớn hơn 5
                if (currentPage <= 3) {
                    startPage = 1;
                    endPage = 5;
                } else if (currentPage + 2 >= totalPages) {
                    startPage = totalPages - 4;
                    endPage = totalPages;
                } else {
                    startPage = currentPage - 2;
                    endPage = currentPage + 2;
                }
            }

            // Hiển thị các trang được chọn
            for (let i = startPage; i <= endPage; i++) {
                const button = document.createElement("div");
                button.classList.add("page-number");
                button.textContent = i;
                button.addEventListener("click", function() {
                    goToPage(i);
                });

                if (i === currentPage) {
                    button.classList.add("active"); // Thêm lớp cho trang hiện tại
                }

                pagination.appendChild(button);
            }
        }

        function goToPage(pageNumber) {
            // Chuyển trang
            currentPage = pageNumber;
            const startIndex = (currentPage - 1) * applicantsPerPage;
            const endIndex = Math.min(startIndex + applicantsPerPage, totalApplicants);

            // Ẩn tất cả các dòng
            Array.from(rows.children).forEach(row => {
                row.style.display = "none";
            });

            // Hiển thị các dòng ứng với trang hiện tại
            for (let i = startIndex; i < endIndex; i++) {
                rows.children[i].style.display = "flex";
            }

            // Cập nhật lại số lượng dữ liệu và số trang
            totalApplicants = rows.children.length;
            totalPages = Math.ceil(totalApplicants / applicantsPerPage);

            // Hiển thị lại thanh chuyển trang
            renderPagination();
        }

        prevPageButton.addEventListener("click", function() {
            if (currentPage > 1) {
                goToPage(currentPage - 1);
            }
        });

        nextPageButton.addEventListener("click", function() {
            if (currentPage < totalPages) {
                goToPage(currentPage + 1);
            }
        });

        // Hiển thị thanh chuyển trang và dữ liệu trang đầu tiên khi trang web được tải
        renderPagination();
        goToPage(1);
    });