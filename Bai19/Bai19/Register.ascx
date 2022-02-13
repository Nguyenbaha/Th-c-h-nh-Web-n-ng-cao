<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Register.ascx.cs" Inherits="Bai19.Register" %>
<h1>Register Form</h1>
<asp:ValidationSummary
    ID="ValidationSummary" DisplayMode="BulletList" runat="server" HeaderText="Check the following error:" Font-Names="verdana" Font-Size="13" />
<asp:Label ID="LblUsername" runat="server" Text="UserName" Width="150px"></asp:Label>
<asp:TextBox ID="Username" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="The Name does not allow null" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>
<br /> <br />
<asp:Label ID="LblPass" runat="server" Text="Password" Width="150px"></asp:Label>
<asp:TextBox ID="Password" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="The Password does not allow null" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
<br /> <br />
<asp:Label ID="LblEmail" runat="server" Text="Email" Width="150px"></asp:Label>
<asp:TextBox ID="Email" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="The Email does not allow null" ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Your entry is not a valid email address" ForeColor="green" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br /> <br />
<asp:Label ID="LblRetypeEmail" runat="server" Text="Retype Email" Width="150px"></asp:Label>
<asp:TextBox ID="RetypeEmail" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorRetypeEmail" runat="server" ErrorMessage="The Retype email does not allow null" ControlToValidate="RetypeEmail" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidatorRetypeEmail" runat="server" ErrorMessage="Does not match!" ControlToCompare="Email" ForeColor="green" ControlToValidate="RetypeEmail"></asp:CompareValidator>
<br /> <br />
<asp:Label ID="LblAge" runat="server" Text="Age" Width="150px"></asp:Label>
<asp:TextBox ID="Age" runat="server"></asp:TextBox>
<asp:RangeValidator ID="RangeValidatorAge" runat="server" ErrorMessage="Your entry is not a valid age" ForeColor="Red" ControlToValidate="Age" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
<br /> <br />
<asp:Label ID="LblSex" runat="server" Text="Sex" Width="150px"></asp:Label>
<asp:RadioButtonList ID="RadioButtonListSex" runat="server">
     <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>FeMale</asp:ListItem>
</asp:RadioButtonList>
<br /> <br />
<asp:Label ID="LblClassName" runat="server" Text="Class name" Width="150px"></asp:Label>
<asp:DropDownList runat="server" ID="ClassName"></asp:DropDownList>
<br /> <br />
<asp:Label ID="LblSubject" runat="server" Text="Subject" Width="150px"></asp:Label>
<asp:ListBox ID="lbSubject" runat="server" SelectionMode="Multiple" Rows="2">
    <asp:ListItem>ASP.NET</asp:ListItem>
    <asp:ListItem>PHP</asp:ListItem>
    <asp:ListItem>JS</asp:ListItem>
    <asp:ListItem>VB.NET</asp:ListItem>
    <asp:ListItem>Adv VB.NET</asp:ListItem>
</asp:ListBox>
<br /> <br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" />

