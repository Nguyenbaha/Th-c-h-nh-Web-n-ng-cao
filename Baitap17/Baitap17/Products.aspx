<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Baitap17.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bai 17</title>
    <link href="products.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="danhsachsanpham">
            <% foreach (Baitap17.Sanpham sp in dsSanPham) { %>
            <div class="sanpham">
                <img class="anhsanpham" src="<%=sp.hinhanh %>">
                <p><%=sp.tenhang %></p>
                <p>In stock</p>
                <span>List price</span> <span style="margin-left: 10px">$<%=sp.dongia.ToString("0.00") %>/Bottle</span><br/>
                <input id="soluong" runat="server" type="text" style="width: 30px;"> <input type="submit" value="Add to cart" />
            </div>
            <% } %>
        </div>
    </form>
</body>
</html>
