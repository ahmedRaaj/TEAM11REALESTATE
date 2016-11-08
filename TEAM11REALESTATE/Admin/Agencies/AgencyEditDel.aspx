<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyEditDel.aspx.cs" Inherits="TEAM11REALESTATE.Admin.Agencies.AgencyEditDel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 496px;">
        <tr>
            <td style="height: 91px"></td>
            <td style="width: 828px; height: 91px"></td>
            <td style="height: 91px"></td>
        </tr>
        <tr>
            <td style="height: 261px"></td>
            <td style="width: 828px; height: 261px">
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" DataKeyNames="AgencyID" Width="984px">
                        <Columns>
                            <asp:BoundField DataField="AgencyID" HeaderText="AgencyID" InsertVisible="False" ReadOnly="True" SortExpression="AgencyID" />
                            <asp:BoundField DataField="AgencyName" HeaderText="AgencyName" SortExpression="AgencyName" />
                            <asp:BoundField DataField="UnitNumber" HeaderText="UnitNumber" SortExpression="UnitNumber" />
                            <asp:BoundField DataField="AddressID" HeaderText="AddressID" SortExpression="AddressID" />
                            <asp:BoundField DataField="BlockNumber" HeaderText="BlockNumber" SortExpression="BlockNumber" />
                            <asp:BoundField DataField="StreetName" HeaderText="StreetName" SortExpression="StreetName" />
                            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Agencies.AgencyName, Addresses.UnitNumber, Agencies.AddressID, Addresses.BlockNumber, Addresses.StreetName, Addresses.PostalCode, Addresses.Email, Addresses.Mobile, Addresses.Website, Addresses.Phone, Agencies.AgencyID FROM Agencies INNER JOIN Addresses ON Agencies.AddressID = Addresses.AddressID" DeleteCommand="DELETE FROM [Agencies] WHERE [AgencyID] = @AgencyID" UpdateCommand="update [Addresses] set [BlockNumber]=@BlockNumber,[UnitNumber]=@UnitNumber,[StreetName]=@StreetName,[PostalCode]=@PostalCode,[Email]=@Email,[Mobile]=@Mobile,[Phone]=@Phone where [AddressID]=@AddressID update [Agencies] set [AgencyName]=@AgencyName where  [AddressID]=@AddressID">
                        <DeleteParameters>
                            <asp:Parameter Name="AgencyID" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BlockNumber" />
                            <asp:Parameter Name="UnitNumber" />
                            <asp:Parameter Name="StreetName" />
                            <asp:Parameter Name="PostalCode" />
                            <asp:Parameter Name="Email" />
                            <asp:Parameter Name="Mobile" />
                            <asp:Parameter Name="Phone" />
                            <asp:Parameter Name="AddressID" />
                            <asp:Parameter Name="AgencyName" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <div>
                        <asp:Button ID="btnOK" runat="server" Text="Ok" Height="40px" PostBackUrl="AgencyMain.aspx" Width="100px" />
                    </div>
                    <br />
                </div>
            </td>
            <td style="height: 261px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 828px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
