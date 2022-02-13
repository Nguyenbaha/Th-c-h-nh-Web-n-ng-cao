<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Bai19.TrangChu" %>

<%@ Register Src="~/Register.ascx" TagPrefix="uc1" TagName="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Register runat="server" ID="Register" />
    </div>
    </form>
</body>
</html>

