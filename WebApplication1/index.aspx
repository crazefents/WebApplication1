<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>

  
    </head>
<body>
     
    
    <form class="container" id="form1" runat="server">
        
            
          <div class="jumbotron col-lg-12">
 <div class="img-responsive">
              <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/iress-logo.jpg" Height="228px" Width="1010px" />
  </div>
</div>
            
             <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Information Capture</h1>
        <p>
            &nbsp;
            <td> 
            Please provide the following information :
                </td></p>
            &nbsp;
            User ID&nbsp; :<asp:DropDownList ID="DropDownList1" class="dropdown-List" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
                <asp:TextBox ID="TextBox4" class="form-control input-sm" runat="server" ValidateRequestMode="Enabled" Width="224px" ></asp:TextBox>
        
        
            <div>
            &nbsp;
            First Name :<asp:TextBox ID="TextBox1"  class="form-control input-sm" runat="server" Width="223px" ></asp:TextBox>
           
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter First Name!" ForeColor="#CC0000">Please Enter First Name!</asp:RequiredFieldValidator>
          </div>
         
       
                
            &nbsp;
            Last Name :<asp:TextBox ID="TextBox2" class="form-control input-sm" runat="server" Width="226px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Error" ForeColor="#CC0000">Please Enter Last Name!</asp:RequiredFieldValidator>
     
        <p>
            &nbsp;&nbsp;&nbsp; Age :
            <asp:TextBox ID="TextBox3" class="form-control input-sm" runat="server" Width="223px"></asp:TextBox>
             </p>
        <p>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Please Enter Age!</asp:RequiredFieldValidator>
       
           </p>
        
        <p>
            <asp:Button ID="Button1"  class="btn btn-default"  runat="server" OnClick="Button1_Click" Text="Insert" Width="88px" />
           
            <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
           
            <asp:Button ID="Button3" class="btn btn-default" runat="server" Text="Update" OnClick="Button3_Click" Height="35px" />
                    <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="Button2" class="btn btn-default" runat="server" Text="Delete" OnClick="Button2_Click" Width="88px" />
            <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://localhost:1296/index.aspx">Refresh</asp:HyperLink>
        </p>
        <div class="container">
            <asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
       <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1138px">
          <Columns>
               <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Test1ConnectionString1 %>" SelectCommand="Get_People" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <div class="jumbotron col-lg-12">
            </div>
             </div>
    </form>
</body>
</html>
