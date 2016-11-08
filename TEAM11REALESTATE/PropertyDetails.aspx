<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs" Inherits="TEAM11REALESTATE.PropertyDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:FormView ID="PropertyDetail" runat="server" ItemType="TEAM11REALESTATE.Models.Property" RenderOuterTable="false" SelectMethod="GetProduct">
    <ItemTemplate>
        <div>
            <h1><%#: Item.ProperName %></h1>
        </div>
    </ItemTemplate>
</asp:FormView>
</asp:Content>
