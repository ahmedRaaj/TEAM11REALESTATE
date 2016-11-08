<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyEditDelete.aspx.cs" Inherits="TEAM11REALESTATE.Agent_s_Agencies.AgencyEditDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 698px;">
        <tr>
            <td style="height: 77px"></td>
            <td style="height: 77px; width: 742px"></td>
            <td style="height: 77px"></td>
        </tr>
        <tr>
            <td style="height: 368px"></td>
            <td style="width: 742px; height: 368px">
            <div>
                <asp:Label ID="lbl_AgencyName" runat="server" Text="Agency Name:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_AgencyName" runat="server"></asp:TextBox> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
                <br />
                <asp:Label ID="lbl_PostalCode" runat="server" Text="PostalCode:" Height="15px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_PostalCode" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_StreetName" runat="server" Text="Street Name:" Visible="False" Height="15px" Width="81px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_StreetName" runat="server" ReadOnly="True" Visible="False" Width="248px"></asp:TextBox> 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_OfficePh" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Label ID="lbl_Website" runat="server" Text="Website Name:" Height="15px"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbx_Website" runat="server"></asp:TextBox> 
                <br />
                <br />
                <asp:Button ID="btn_Update" runat="server" Text="Update" OnClick="btn_Update_Click" Width="73px" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </div>
            </td>
            <td style="height: 368px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 742px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
