<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DateDistance.aspx.cs" Inherits="DateDistance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1> Date Distance</h1>
    <table>
      <tr>
          <td>
              From
          </td>
            <td>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:Calendar ID="Calendar1" runat="server" 
                            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
      
              </td>
      </tr>
        <tr>
            <td>
                to
            </td>
            <td>
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <asp:Calendar ID="Calendar2" runat="server" 
                            onselectionchanged="Calendar2_SelectionChanged"></asp:Calendar>
      
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Distance" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Days of Distance" BackColor="#66CCFF" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label1" runat="server" BackColor="#CCFFFF" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
