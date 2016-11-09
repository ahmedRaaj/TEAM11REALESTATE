<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs" Inherits="TEAM11REALESTATE.PropertyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        $(function () {
            $('#mycarousel').jcarousel();
        });
    </script>

    <asp:FormView ID="PropertyDetail" runat="server" ItemType="TEAM11REALESTATE.Models.Property" RenderOuterTable="false" SelectMethod="GetProduct">
        <ItemTemplate>
            <table>
                <tr class="success">
                    <h1><%#: Item.ProperName %></h1>
                </tr>
                <tr class="success">
                    <h3>District <%# Item.District.DistrictCode %> &nbsp
                 Blk: <%# Item.Address.BlockNumber %> &nbsp 
                <%#: Item.Address.StreetName  %> &nbsp# 
                <%#: Item.Address.UnitNumber %> 
                Singapore &nbsp<%#: Item.Address.PostalCode %> 
                    </h3>
                </tr>
                <tr class="success">
                    <h4>
                        <%#: Item.Description %> 

                    </h4>
                </tr>

     
                <tr>
                    <ul id="mycarousel" class="jcarousel-skin-tango">
                        <asp:Repeater  runat="server" ID="RepeaterPropertyImages" ItemType="TEAM11REALESTATE.Models.PropertyImage" SelectMethod="RepeaterPropertyImages_GetData">
                            <ItemTemplate>
                                <li>
                                    <img alt="" style='height: 300px; width: 400px' src='<%# Item.GetPropertyImageWithPath() %>' />
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </tr>
            </table>

        </ItemTemplate>
    </asp:FormView>
</asp:Content>
