var button = document.getElementById("button");
if (button) {
    button.addEventListener("click", function () {
        if (sessionUsername == "") {
            window.location.href = "./login.jsp";
            return; // Thêm return để ngăn việc tiếp tục thực thi
        }
        
        // Tiếp tục xử lý popup
        else{
        var popup = document.getElementById("framePopup");
        if (!popup) return;
        var popupStyle = popup.style;
        if (popupStyle) {
            popupStyle.display = "flex";
            popupStyle.zIndex = 100;
            popupStyle.backgroundColor = "rgba(113, 113, 113, 0.3)";
            popupStyle.alignItems = "center";
            popupStyle.justifyContent = "center";
        }
        popup.setAttribute("closable", "");

        var onClick = function (e) {
            if (e.target === popup || e.target.classList.contains("icon")) {
                if (popup.hasAttribute("closable")) {
                    popupStyle.display = "none";
                }
            }
        };
        popup.addEventListener("click", onClick);
        }
    });
}


