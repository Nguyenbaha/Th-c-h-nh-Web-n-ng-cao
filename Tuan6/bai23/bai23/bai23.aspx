<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai23.aspx.cs" Inherits="bai23.bai23" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>bai23</title>
    <link href="style.css" rel="stylesheet" />
    <script>
        function validategia() {
            var giamin = document.getElementById('<%=Giatu.ClientID%>').value;
            var giamax = document.getElementById('<%=Giaden.ClientID%>').value;
            if ( !giamax || !giamin ) {
                alert("Bạn nhập thiếu giá trị cần tìm");
                return false;
            }
            
            if (giamin < 0)
            {
                   alert("Giá min không được nhỏ hơn 0");
                    return false;
             }
       
            else if (giamax < 0)
            {
                  alert("Giá max không được nhỏ hơn 0");
                 return false;
            }

            if (giamin > giamax)
            {
                alert("Giá max không được nhỏ hơn min");
                return false
            }
    }
    </script>
</head>
<body>
    <form id="form1" runat="server" >
        <center>
            <fieldset style="background-color: mintcream">
            <legend><h1>Danh sách sản phẩm nè: </h1></legend>
        <div>
            <br />
            <div>
                <label>Hãng </label><asp:DropDownList ID="ddlhang" runat="server"></asp:DropDownList>
                <label>Giá</label><asp:TextBox ID="Giatu" runat="server" TextMode="number"></asp:TextBox>
                <label>Đến</label><asp:TextBox ID="Giaden" runat="server" TextMode="number"></asp:TextBox>
                <asp:Button ID="timkiem" runat="server" Text="Tìm" OnClick="tim_Click" OnClientClick=" return validategia()" />

            </div>
            <div id="product">
            <asp:ListView ID="lv" runat="server" OnSelectedIndexChanged="lv_SelectedIndexChanged" EnableTheming="True"  >
         
                      <LayoutTemplate>
                           <table>
                              <tr>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                              </tr>
                           </table>
                    </LayoutTemplate>

                    <ItemTemplate>  
                     
                            <td>
                         <img src="img/<%# Eval("sAnhUrl") %>" width="80px" height="80px" /> <br />
                         <span><%# Eval("sTendienthoai") %></span><br />
                          <%# Eval("mGiaBan","{0:0,00}")  %></span>vnđ <br />
                             <a href="#">Chi tiết</a>    
                                 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                         </td>  
                       
                 </ItemTemplate>
  
            </asp:ListView>
                <br />
                </div>

            <div>
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lv" PageSize="5" OnPreRender="DataPager1_PreRender">
                    <Fields>
                        <asp:NumericPagerField ButtonType="Button" />
                        <asp:NextPreviousPagerField ButtonType="Button" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
                </fieldset>
            </center>
    </form>
</body>
</html>
