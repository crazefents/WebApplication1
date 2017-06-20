<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Information Capture</p>
        <p>
            Please provide the following information :</p>
        <p style="width: 704px">
            User ID&nbsp; :<asp:TextBox ID="TextBox4" runat="server" ValidateRequestMode="Enabled" ></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <p>
            First Name :
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
           
        </p>
        <p>
            Last Name :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            Age :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
        </p>
            <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
        <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <p>
        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
            <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Test1ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Test1ConnectionString1.ProviderName %>" SelectCommand="SELECT [userID], [Fname], [Lname], [Age] FROM [People]"></asp:SqlDataSource>
    </form>
</body>
</html>
