<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ValidatorsPractice.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function NameValidator(sender, args) {
            if (args.Value.length < 5 || args.Value.length > 10) {
                args.isValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblStdId" runat="server" Text="Student ID"></asp:Label>
            <asp:TextBox ID="txtStdId" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStdId" ErrorMessage="ID should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /> <br />

            <asp:Label ID="lblStdName" runat="server" Text="Student Name"></asp:Label>
            <asp:TextBox ID="txtStdName" runat="server"></asp:TextBox> 
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ClientValidationFunction="NameValidator" ControlToValidate="txtStdName" Display="Dynamic" ForeColor="Red"></asp:CustomValidator><br /> <br />

            <asp:Label ID="lblSite" runat="server" Text="Website"></asp:Label>
            <asp:TextBox ID="txtSite" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtSite" ForeColor="Red" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator><br /> <br />

            <asp:Label ID="lblStdCrs" runat="server" Text="Course"></asp:Label>
            <asp:TextBox ID="txtStdCrs" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStdCrs" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /> <br />

            <asp:Label ID="lblCrsFee" runat="server" Text="Course Fee"></asp:Label>
            <asp:TextBox ID="txtCrsFee" runat="server"></asp:TextBox> 
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCrsFee" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="2000" MinimumValue="1000" Type="Integer"></asp:RangeValidator>
            <br /> <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
