var ten = document.getElementById("ten");
var mota = document.getElementById("mota");
var soluong = document.getElementById("soluong");
var gianhap = document.getElementById("gianhap");
var donvitinh = document.getElementById("donvitinh");

function validate() {
    if (ten.value == null || ten.value == "") {
        alert('Ten khong duoc bo trong');
        return false;
    }
    if (mota.value == null || mota.value == "") {
        alert('Mo ta khong duoc bo trong');
        return false;
    }
    if (soluong.value == null || soluong.value == "") {
        alert('So luong khong duoc bo trong');
        return false;
    }
    if (gianhap.value == null || gianhap.value == "") {
        alert('Gia nhap khong duoc bo trong');
        return false;
    }
    if (isNaN(gianhap.value)) {
        alert('Gia nhap phai la so');
        return false;
    }
    if (donvitinh.value == null || donvitinh.value == "") {
        alert('Don vi tinh khong duoc bo trong');
        return false;
    }
    return true;
}