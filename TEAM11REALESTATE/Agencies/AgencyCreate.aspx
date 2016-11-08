<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyCreate.aspx.cs" Inherits="TEAM11REALESTATE.Agencies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />

    <table style="width:100%; height: 626px;">
        <tr>
            <td style="width: 234px; height: 471px;">
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
            <td style="width: 710px; height: 471px;">
                <br />
                <br />
                <div>
                <asp:Label ID="lbl_AgencyName" runat="server" Text="Agency Name:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_AgencyName" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_PostalCode" runat="server" Text="PostalCode:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_PostalCode" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_StreetName" runat="server" Text="Street Name:" Visible="False" Height="15px" Width="81px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_StreetName" runat="server" ReadOnly="True" Visible="False" Width="350px"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_BlockNumber" runat="server" Text="Block Number:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_BlockNumber" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_UnitNumber" runat="server" Text="Unit Number:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_UnitNumber" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_Email" runat="server" Text="Email Address:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_Email" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_Mobile" runat="server" Text="Mobile Phone:" Height="16px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_Mobile" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_OfficePh" runat="server" Text="Office Phone:" Height="16px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_OfficePh" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_Website" runat="server" Text="Website Name:" Height="15px"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_Website" runat="server"></asp:TextBox> 
                <br />
                    <br />
                <asp:Button ID="btn_Save" runat="server" Text="Save" OnClick="btn_Save_Click" />

                </div>
            </td>
            <td style="height: 471px">
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
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 234px">
                &nbsp;</td>
            <td style="width: 710px">
                <br />

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 710px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
