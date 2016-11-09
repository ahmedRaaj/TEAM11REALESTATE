<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyProperties.aspx.cs" Inherits="TEAM11REALESTATE.Propertiespages.ModifyProperties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
   <br /><br /> <b><asp:Label ID="Label1" runat="server" Text="My Properties"></asp:Label></b>
   <br /><br /><b>
    <asp:Button ID="Button1" runat="server" Text="Add Property" Width="249px" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Modify Existing Properties" Width="249px" />
    </b></head>

    <br /><br />
    <b><asp:Label ID="Label3" runat="server" Text="Choose Property to Edit"></asp:Label></b>

    <br /><br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProperName] FROM [Properties]"></asp:SqlDataSource>

    <br />
    <table style="width: 100%; margin-bottom: 202px;">
        <tr>
            <td style="width: 89px">
    <asp:Label ID="Label2" runat="server" Text="Property"></asp:Label>

            </td>
            <td style="width: 50px">

    <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="228px" DataSourceID="SqlDataSource5" DataTextField="ProperName" DataValueField="ProperName">
    </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateModel %>" SelectCommand="SELECT [PropertyID], [ProperName] FROM [Properties]"></asp:SqlDataSource>

            </td>
            <td style="width: 75px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 64px; width: 89px">
                &nbsp;</td>
            <td style="height: 64px; width: 50px">
                <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Change" />

            </td>
            <td style="height: 64px; width: 75px"></td>
            <td style="height: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
    <asp:Label ID="Label12" runat="server" Text="Property type"></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
    <asp:DropDownList ID="DropDownList3" runat="server" Height="31px" Width="184px">
    </asp:DropDownList>
            </td>
            <td style="height: 39px; width: 75px">
                &nbsp;</td>
            <td style="height: 39px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label></td>
            <td style="height: 39px; width: 50px">
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            </td>
            <td style="height: 39px; width: 75px">&nbsp;</td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
    <asp:Label ID="Label6" runat="server" Text="Unit no. "></asp:Label>

            </td>
            <td style="height: 39px; width: 50px">

    <asp:TextBox ID="TextBox2" runat="server" Width="132px" ReadOnly="True"></asp:TextBox> 
            </td>
            <td style="height: 39px; width: 75px"> 
    <asp:Label ID="Label7" runat="server" Text="Blk no."></asp:Label>
            </td>
            <td style="height: 39px">
    <asp:TextBox ID="TextBox3" runat="server" Width="132px" ReadOnly="True"></asp:TextBox> 

            </td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
    <asp:Label ID="Label8" runat="server" Text="Street name"></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="412px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>

            </td>
            <td style="height: 39px; width: 75px">&nbsp;</td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
    <asp:Label ID="Label9" runat="server" Text="Postal code"></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
    <asp:TextBox ID="TextBox5" runat="server" Width="134px" ReadOnly="True"></asp:TextBox>

            </td>
            <td style="height: 39px; width: 75px">&nbsp;</td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
    <asp:Label ID="Label10" runat="server" Text="District"></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="DistrictName" DataValueField="DistrictID" Height="35px" Width="272px">
    </asp:DropDownList>
            </td>
            <td style="height: 39px; width: 75px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateModel %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT [DistrictID], [DistrictName], [DistrictCode] FROM [Districts]"></asp:SqlDataSource>
   
            </td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
                <asp:Label ID="Label13" runat="server" Text="Size psf"></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
                <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="92px"></asp:TextBox>
    
            </td>
            <td style="height: 39px; width: 75px">&nbsp;</td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
                <asp:Label ID="Label14" runat="server" Text="Price psf"></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
                <asp:TextBox ID="TextBox8" runat="server" Width="90px"></asp:TextBox>
    
            </td>
            <td style="height: 39px; width: 75px">&nbsp;</td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 39px">
     <asp:Label ID="Label11" runat="server" Text="Description "></asp:Label>
            </td>
            <td style="height: 39px; width: 50px">
    <asp:TextBox ID="TextBox6" runat="server" Height="53px" Width="319px" TextMode="MultiLine"></asp:TextBox>
    
            </td>
            <td style="height: 39px; width: 75px">&nbsp;</td>
            <td style="height: 39px">&nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [TypeName] FROM [PropertyTypes]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="Button4" runat="server" Text="Cancel" Width="87px" />
    <asp:Button ID="Button3" runat="server" Text="Save" Height="31px" Width="87px" OnClick="Button3_Click" />
</asp:Content>


