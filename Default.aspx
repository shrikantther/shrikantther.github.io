<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server" >
    <div>
        <h1>Registration Of Product</h1>
    <table>
        <tr>
            <td class="auto-style1">
                Product Name
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="productname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product Category
            </td>
            <td>
                <asp:DropDownList ID="Category" runat="server">
                    <asp:ListItem>Mobile and accesoories</asp:ListItem>
                    <asp:ListItem>Powder Detergent</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
                <tr>
            <td>
                Quantity
            </td>
            <td>
                <asp:TextBox ID="Quantity" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Price
            </td>
            <td>
                <asp:TextBox ID="Price" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Product Description
            </td>
            <td>
                <asp:TextBox ID="Description" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
    </table>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </div>
        <table>
              <tr>
            <td class="auto-style1">
                Product Name
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product Category
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mobile and accesoories</asp:ListItem>
                    <asp:ListItem>Powder Detergent</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
                <tr>
            <td>
                Quantity
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Price
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Product Description
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>

        </table>
    </form>
</body>
</html>
