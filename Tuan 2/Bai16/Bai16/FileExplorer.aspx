<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileExplorer.aspx.cs" Inherits="Bai16.FileExplorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No files uploaded" Height="387px" Width="586px" BorderColor="#000099">
                <Columns>

                    <asp:BoundField DataField="Text" HeaderText="File Name"  ItemStyle-BackColor="#99FFCC" />
                    <asp:TemplateField HeaderText="Click tải xuống" ControlStyle-BorderColor="#0000CC" FooterStyle-BackColor="#CCFFFF" ItemStyle-BackColor="#CCFFFF">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="btndownlaod_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
