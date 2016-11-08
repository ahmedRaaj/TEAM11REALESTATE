<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellerDeletePage.aspx.cs" Inherits="TEAM11REALESTATE.SellerPages.SellerDeletePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:GridView ID="GVDeleteSeller" runat="server" AutoGenerateColumns="False" DataSourceID="SellerDataSource" DataKeyNames="SellerID">
        <Columns>
            <asp:BoundField DataField="SellerID" HeaderText="SellerID" InsertVisible="False" ReadOnly="True" SortExpression="SellerID" />
            <asp:BoundField DataField="SellerName" HeaderText="SellerName" SortExpression="SellerName" />
            <asp:BoundField DataField="UnitNumber" HeaderText="UnitNumber" SortExpression="UnitNumber" />
            <asp:BoundField DataField="BlockNumber" HeaderText="BlockNumber" SortExpression="BlockNumber" />
            <asp:BoundField DataField="StreetName" HeaderText="StreetName" SortExpression="StreetName" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SellerDataSource" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="select SellerID, SellerName,UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone from Sellers s,Addresses a
where s.AddressID=a.AddressID" DeleteCommand="DELETE FROM [Sellers] WHERE [SellerID] = @SellerID">
        <DeleteParameters>
            <asp:Parameter Name="SellerID" />
        </DeleteParameters>
        </asp:SqlDataSource>

        <br />

    <asp:Button ID="btnMainPage" runat="server" Text="Ok" Width="70px" OnClick="btnMainPage_Click" />
</asp:Content>
