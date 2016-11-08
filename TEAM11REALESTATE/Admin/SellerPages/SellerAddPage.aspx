<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellerAddPage.aspx.cs" Inherits="TEAM11REALESTATE.SellerPages.SellerAddPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        &nbsp;<table style="width: 100%; height: 638px;">
            <tr>
                <td style="width: 7px; height: 447px;">
                </td>
                <td style="width: 635px; height: 447px;">
                    <asp:Label ID="lblSellerName" runat="server" Text="Name:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbName" runat="server" Width="300px"></asp:TextBox>
                    &nbsp;<br />
                    <asp:Label ID="lblUnitNumber" runat="server" Text="Unit Number:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbUnitnum" runat="server" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
    <asp:Label ID="lblBlockNumber" runat="server" Text="Block Number:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbblknum" runat="server" Width="300px"></asp:TextBox>
    <br />
    <asp:Label ID="lblstreetName" runat="server" Text="Street:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbStreet" runat="server" Width="300px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="lblPostCode" runat="server" Text="Postal Code:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbPostcode" runat="server" Width="300px"></asp:TextBox>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbEmail" runat="server" Width="300px"></asp:TextBox>
<br />
                    <asp:Label ID="lblMobile" runat="server" Text="Moblie Number:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbMobile" runat="server" Width="300px"></asp:TextBox>
                    <br />
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" Width="200px"></asp:Label>
    <asp:TextBox ID="tbPhone" runat="server" Width="300px"></asp:TextBox>
<br />
    <br />
                    <asp:Button ID="btnMainPage" runat="server" OnClick="MainPage_Click" Text="Cancel" Width="100px" Height="40px" />
                &nbsp;
    <asp:Button ID="btnInsert" runat="server" Text="Insert Seller" Width="100px" OnClick="btnInsert_Click" Height="40px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="height: 447px"></td>
            </tr>
            <tr>
                <td style="width: 7px; height: 20px;"></td>
                <td style="width: 635px; height: 20px;"></td>
                <td style="height: 20px">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
</asp:Content>
