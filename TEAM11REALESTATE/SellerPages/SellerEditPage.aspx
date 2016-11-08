<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellerEditPage.aspx.cs" Inherits="TEAM11REALESTATE.SellerPages.SellerEditPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GVEditSeller" runat="server" AutoGenerateColumns="False" DataSourceID="SellerDataSource" RowHeaderColumn="SellerName">
        <Columns>
            <asp:BoundField DataField="SellerName" HeaderText="SellerName" SortExpression="SellerName" />
            <asp:BoundField DataField="addressID" HeaderText="addressID" SortExpression="addressID" />
            <asp:BoundField DataField="UnitNumber" HeaderText="UnitNumber" SortExpression="UnitNumber" />
            <asp:BoundField DataField="BlockNumber" HeaderText="BlockNumber" SortExpression="BlockNumber" />
            <asp:BoundField DataField="StreetName" HeaderText="StreetName" SortExpression="StreetName" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:CommandField ButtonType="Button" CancelText="Cancel" DeleteText="Delete" EditText="Edit" ShowEditButton="True" UpdateText="Edit" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SellerDataSource" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="select s.addressID, SellerName,UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone from Sellers s,Addresses a
where s.AddressID=a.AddressID" UpdateCommand="update [Addresses] set [BlockNumber]=@BlockNumber,[UnitNumber]=@UnitNumber,[StreetName]=@StreetName,[PostalCode]=@PostalCode,[Email]=@Email,[Mobile]=@Mobile,[Phone]=@Phone where [AddressID]=@AddressID update [Sellers] set [SellerName]=@SellerName where  [AddressID]=@AddressID">
        <UpdateParameters>
            <asp:Parameter Name="BlockNumber" />
            <asp:Parameter Name="AddressID" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;
    <asp:Button ID="btnOk" runat="server" Text="Ok" Width="70px" OnClick="btnOk_Click" />
</asp:Content>
