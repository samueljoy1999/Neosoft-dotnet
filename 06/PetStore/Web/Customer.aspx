<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Customer.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Name" runat="server" Text="Name" Height="30px" Width="50px"></asp:Label>&nbsp;
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Email">
            </asp:Label><asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
        </div>  
        <div>
            <asp:Label ID="Label2" runat="server" Text="Zip Code">
            </asp:Label><asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
        </div>  
        <div>
            <asp:Label ID="Label3" runat="server" Text="Username">
            </asp:Label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </div>  
        <div>
            <asp:Label ID="Label4" runat="server" Text="Password">
            </asp:Label><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </div>  
        <br/>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
