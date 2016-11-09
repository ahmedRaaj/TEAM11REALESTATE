<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyMain.aspx.cs" Inherits="TEAM11REALESTATE.Admin.Agencies.AgencyMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" class="table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource">
                    <Columns>
                        <asp:BoundField DataField="AgencyName" HeaderText="AgencyName" SortExpression="AgencyName" />
                        <asp:BoundField DataField="UnitNumber" HeaderText="UnitNumber" SortExpression="UnitNumber" />
                        <asp:BoundField DataField="BlockNumber" HeaderText="BlockNumber" SortExpression="BlockNumber" />
                        <asp:BoundField DataField="StreetName" HeaderText="StreetName" SortExpression="StreetName" />
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Agencies.AgencyName, Addresses.UnitNumber, Addresses.BlockNumber, Addresses.StreetName, Addresses.PostalCode, Addresses.Email, Addresses.Mobile, Addresses.Phone, Addresses.Website FROM Agencies INNER JOIN Addresses ON Agencies.AddressID = Addresses.AddressID"></asp:SqlDataSource>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnCreate" runat="server" Text="Create" Width="100px" PostBackUrl="AgencyCreate.aspx" Height="40px" />
            &nbsp;&nbsp;
                <asp:Button ID="btnEditDelete" runat="server" Text="Edit/Delete" Width="100px" PostBackUrl="AgencyEditDel.aspx" Height="40px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
