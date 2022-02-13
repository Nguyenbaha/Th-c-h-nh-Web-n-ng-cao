function ktra() {
    //declear
    var hoten = document.getElementById("txthoten").value;
    var ngaysinh = document.getElementById("txtngaysinh").value;

    if (hoten == null || hoten == "") {
        alert("Không được để trống họ tên");
        txthoten.focus();
        return false;
    }

    if (hoten.length < 5) {
        alert("Họ tên phải lớn hơn 5 ký tự");
        return false;
    }

    if (new Date(ngaysinh) > new Date()) {
        alert("Ngày sinh không được lớn hơn ngày hiện tại");
        return false;
    }
}