<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellerMainPage.aspx.cs" Inherits="TEAM11REALESTATE.Seller.SellerMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GVSellerList" runat="server" AutoGenerateColumns="False" DataSourceID="SellerDataSource">
        <Columns>
            <asp:BoundField DataField="SellerName" HeaderText="SellerName" SortExpression="SellerName" />
            <asp:BoundField DataField="UnitNumber" HeaderText="UnitNumber" SortExpression="UnitNumber" />
            <asp:BoundField DataField="BlockNumber" HeaderText="BlockNumber" SortExpression="BlockNumber" />
            <asp:BoundField DataField="StreetName" HeaderText="StreetName" SortExpression="StreetName" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SellerDataSource" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="select SellerName,UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone from Sellers s,Addresses a
where s.AddressID=a.AddressID"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add" PostBackUrl="~/SellerPages/SellerAddPage.aspx" Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnEdit" runat="server" Text="Edit" PostBackUrl="~/SellerPages/SellerEditPage.aspx" Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" PostBackUrl="~/SellerPages/SellerDeletePage.aspx" Width="70px" />
    <br />
</asp:Content>
