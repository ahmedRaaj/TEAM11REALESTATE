<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellerAddPage.aspx.cs" Inherits="TEAM11REALESTATE.SellerPages.SellerAddPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        &nbsp;<asp:GridView ID="gvAddrList" runat="server" AutoGenerateColumns="False" DataKeyNames="AddressID" DataSourceID="AddrDataSource">
            <Columns>
                <asp:BoundField DataField="AddressID" HeaderText="AddressID" InsertVisible="False" ReadOnly="True" SortExpression="AddressID" />
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
        <asp:SqlDataSource ID="AddrDataSource" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT AddressID, UnitNumber, BlockNumber, StreetName, PostalCode, Email, Mobile, Phone, Website FROM Addresses"></asp:SqlDataSource>
        <table style="width: 100%; height: 194px;">
            <tr>
                <td style="width: 9px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 635px">&nbsp;<asp:Label ID="lblUnitNumber" runat="server" Text="Unit Number:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbUnitnum" runat="server" Width="128px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
    <asp:Label ID="lblBlockNumber" runat="server" Text="Block Number:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbblknum" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblstreetName" runat="server" Text="Street:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbStreet" runat="server" Width="429px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="lblPostCode" runat="server" Text="Postal Code:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPostcode" runat="server" Width="122px"></asp:TextBox>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="lblMobile" runat="server" Text="Moblie Number:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
                    <br />
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
                    <asp:Button ID="btnInsertAddr" runat="server" Height="26px" Text="Insert Addrees" Width="170px" OnClick="btnInsertAddr_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="lblSellerName" runat="server" Text="Name:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                    &nbsp;<br />
                    <asp:Label ID="lblAddCode" runat="server" Text="AddressID:"></asp:Label>
        &nbsp;
    <asp:TextBox ID="tbAddrID" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="btnInsert" runat="server" Text="Insert Seller" Width="170px" OnClick="btnInsert_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 9px"></td>
                <td style="width: 635px"></td>
                <td></td>
            </tr>
        </table>
        <br />
</asp:Content>
