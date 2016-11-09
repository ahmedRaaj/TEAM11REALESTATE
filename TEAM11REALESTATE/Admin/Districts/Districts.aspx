<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Districts.aspx.cs" Inherits="TEAM11REALESTATE.Admin.Districts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Manage District and Area"></asp:Label>
    <br /><br /><br />
    <asp:Label ID="lblSelectDistCode" runat="server" Text="District Code:   " Font-Bold="True"></asp:Label>
    <asp:DropDownList ID="ddlDistrictCode" runat="server" OnSelectedIndexChanged="ddlDistrictCode_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lblDistrictCode" runat="server" Text="District Code:   " Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtDistrictCode" runat="server" OnTextChanged="txtDistrictCode_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDistrictCode" ErrorMessage="District Code cannot be blank"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Label ID="lblDistrictName" runat="server" Text="District Name:   " Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtDistrictName" runat="server" OnTextChanged="txtDistrictName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDistrictName" ErrorMessage="District Name cannot be blank"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Button Class="btn-success" ID="btnSaveDistrict" runat="server" Text="Save District" OnClick="btnSaveDistrict_Click" />
    &nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button Class="btn-success" ID="btnInsertDistrict" runat="server" Text="Insert District" OnClick="btnInsertDistrict_Click" />
    &nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button Class="btn-success" ID="btnDeleteDistrict" runat="server" Text="Delete District" OnClick="btnDeleteDistrict_Click" />
    &nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button Class="btn-success" ID="btnFindAreas" runat="server" Text="Find Area" OnClick="btnFindAreas_Click" />
    <br /><br />
    <br />
    <table  class="table-condensed" style="width:100%;">
        <tr>
            <td style="width: 11%">
                <asp:Label ID="lblAreaName" runat="server" Text="Area Names: " Font-Bold="True"></asp:Label>
            </td>
            <td colspan="5">
                <asp:GridView  class="table-condensed" ID="grvAreas" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvAreas_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
<%--                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SA43TEAM11REALESTATEConnectionString %>" 
                    SelectCommand="SELECT * FROM [Areas]"
                    UpdateCommand="UPDATE Areas SET AreaName = @AreaName WHERE AreaId = @AreaId"
                    DeleteCommand="DELETE FROM Areas WHERE AreaId = @AreaId">
                </asp:SqlDataSource>--%>
            </td>
        </tr>
        <tr>
            <td style="width: 11%; height: 7px;"></td>
            <td style="height: 7px; width: 15%"></td>
            <td style="height: 7px" colspan="4"></td>
        </tr>
        <tr>
            <td style="width: 11%; height: 13px;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="New Area Name: "></asp:Label>
            </td>
            <td style="height: 13px; width: 15%">
                <asp:TextBox ID="txtNewAreaName" runat="server" OnTextChanged="txtNewAreaName_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 13px; " colspan="2">
                &nbsp;</td>
            <td style="height: 13px" colspan="2">
                </td>
        </tr>
        <tr>
            <td style="width: 11%; height: 22px;">&nbsp;</td>
            <td style="height: 22px; width: 15%">
                <asp:Button Class="btn-info" ID="Button1" runat="server" Text="Insert New Area" Width="118px" OnClick="Button1_Click" />
            </td>
            <td style="height: 22px; width: 8%;">
                <asp:Button Class="btn-info" ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete Area" />
            </td>
            <td style="height: 22px; width: 58px;">
                &nbsp;</td>
            <td style="height: 22px; width: 1006px;">
                &nbsp;</td>
            <td style="height: 22px; width: 1%;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 11%">
                &nbsp;</td>
            <td style="width: 15%">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
