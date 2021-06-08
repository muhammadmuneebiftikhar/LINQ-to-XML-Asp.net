<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LINQ_to_XML._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            width: 308px;
        }
        .auto-style3 {
            width: 308px;
        }
        .auto-style4 {
            text-align: center;
            width: 308px;
            font-size: xx-large;
        }
        .auto-style5 {
            text-align: center;
            height: 26px;
        }
        .auto-style6 {
            text-align: center;
            width: 308px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4"><strong>Employee Details</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Employee Code :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Employee Name :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style1">Employee Email:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Employee Address :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Employee Cell Phone :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCellPhone" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                </td>
                <td>
                    <asp:Button ID="Update" runat="server"  CssClass="btn" Text="Update" OnClick="Update_Click" />
                    <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:GridView ID="GridView1" runat="server" Width="995px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
