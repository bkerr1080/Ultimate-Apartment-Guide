<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="listingsadmin.aspx.cs" Inherits="Ultimate_Apartment_Guide.addlisting" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add a Listing</h1>
            <p>This is where you will add a listing! Mainly for testing right now.</p>
            <p>There are currently <asp:Label ID="lblCurrentNumberOfListings" Text="0" runat="server"/> listings in the database.</p>
            Community Name: <asp:TextBox ID="txtCommunityName" runat="server" /><br />
            Address 1: <asp:TextBox ID="txtAddressOne" runat="server" /><br />
            Address 2: <asp:TextBox ID="txtAddressTwo" runat="server" /><br />
            City: <asp:TextBox ID="txtCity" runat="server" /><br />
            State: <asp:TextBox ID="txtState" runat="server" /><br />
            Zip Code: <asp:TextBox ID="txtZipCode" runat="server" /><br />
            Year Built: <asp:TextBox ID="txtYearBuilt" runat="server" /><br />
            Description: <asp:TextBox ID="txtDescription" runat="server" /><br />
            <asp:Button OnClick="btnSubmit_Click" runat="server" Text="Add Listing" />
        </div>
        <br /><br />
        <div>
            <h1>Current Listings</h1>
            <asp:DataGrid ID="dgvListings" runat="server" BorderColor="Black" BorderWidth="1" CellPadding="3" AutoGenerateColumns="true">
                <HeaderStyle BackColor="#00aaaa" />

            </asp:DataGrid>
        </div>
    </form>
</body>
</html>