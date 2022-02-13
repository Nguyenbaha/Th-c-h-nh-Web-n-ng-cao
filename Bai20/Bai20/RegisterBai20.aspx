<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterBai20.aspx.cs" Inherits="Bai20.RegisterBai20" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSearch" ValidationGroup="Search" runat="server" ErrorMessage="Cần phải nhập dữ liệu!" ForeColor="Red"  ControlToValidate="Search"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="Search" placeholder="Search" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" ValidationGroup="Search" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <br /> <br />
            <asp:Label ID="Register" runat="server" Text="Register"></asp:Label>
            <br /> <br />
            <asp:Label ID="FirstName" runat="server" Text="First name:"></asp:Label>
            <br />
            <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" ValidationGroup="submit" runat="server" ErrorMessage="Chưa có dữ liệu!" ForeColor="Red"  ControlToValidate="Fname"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorFirstname" ValidationGroup="submit" runat="server" ErrorMessage="Lỗi định dạng" ValidationExpression="^[a-zA-Z]+$" ControlToValidate="Fname"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="LblLastname" runat="server" Text="Last name:"></asp:Label>
            <br />
            <asp:TextBox ID="Lastname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastname" ValidationGroup="submit" runat="server" ErrorMessage="Chưa có dữ liệu!" ForeColor="Red"  ControlToValidate="Lastname"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label>     
            <br />
            <asp:TextBox ID="Pass" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" ValidationGroup="submit" runat="server" ErrorMessage="Lỗi định dạng" ValidationExpression="^(?=.+\d)(?=.+[A-Z]).{6,}$" ControlToValidate="Pass"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="LblRepass" runat="server" Text="Re-type Password:"></asp:Label>
            <br />
            <asp:TextBox ID="Repass" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidatorRetypeEmail" ValidationGroup="submit" runat="server" ErrorMessage="Không khớp mật khẩu!" ControlToCompare="Pass" ForeColor="red" ControlToValidate="Repass"></asp:CompareValidator>
            <br /> <br />
            <asp:Button ID="btnSubmit" ValidationGroup="submit"  runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
