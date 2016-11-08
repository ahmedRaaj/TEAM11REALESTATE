<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TEAM11REALESTATE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
      <table class="table">
               <tr style="border:none">
                   <td><span class="FilterTypeName" style="text-align: center;border:none;font-weight:bold">Property Type</span></td>
                   <td><span class="FilterTypeName" style="text-align: center;border:none;font-weight:bold">Minimum Price</span></td>
                   <td><span class="FilterTypeName" style="text-align: center;border:none;font-weight:bold">Maximum Price</span></td>
                   <td><span class="FilterTypeName" style="text-align: center;border:none;font-weight:bold">Rooms</span></td>
                   <td rowspan="2">
                       <button type="button" class="btn btn-primary">SEARCH</button>
                   </td>
               </tr>


          <tr style="border:none">
               <td>
                   <asp:DropDownList class="select" runat="server" ID="DDPropertyType" ItemType="TEAM11REALESTATE.Models.PropertyType" DataMember="PropertyTypeID" DataValueField="TypeName" SelectMethod="GetPropertyTypes">
                       
                   </asp:DropDownList>
               </td>
                 <td>
                   <select class="select">
                       <option>{PlaceHolder}</option>
                   </select>
               </td>
                 <td>
                   <select class="select">
                       <option>{PlaceHolder}</option>
                   </select>
               </td>
                 <td>
                   <select class="select">
                       <option>{PlaceHolder}</option>
                   </select>
               </td>
               
           </tr>
       </table>
    </div>

    <div class="row">
        <asp:ListView ID="PropertyList" runat="server" DataKeyNames="PropertyID"
            ItemType="TEAM11REALESTATE.Models.Property" SelectMethod="GetProperties">
            <EmptyDataTemplate>
                <table class="table">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>

            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>
            <ItemTemplate>
                <td runat="server">
                    <table class="table">
                        <tr>
                            <td width="10%">
                                <img src="/Images/Properties/Condo1.jpg" class="img-rounded" alt="Cinque Terre" width="250" height="200">
                            </td>
                            <td width="45%">
                                <span style="font-weight:bold;font-size:large"><%# Item.ProperName %></span>
                                <br />
                                <%# Item.Address.StreetName + " " + Item.Address.PostalCode %>
                                <br />
                                <%# Item.PropertyType.TypeName %>
                                <br />
                                <%# Item.Rooms %>
                                <br />
                                <%# Item.Agent.SalesPersonName %>

                            </td>
                            <td width="45%">
                               <span style="font-weight:bold;font-size:large"> <%# String.Format("{0:c}",Item.PricePSF*Item.SizePSF)  %></span>
                                <br />
                                <%# Item.PricePSF + " " + Item.Address.PostalCode %>
                                <br />
                                <%# Item.SizePSF %>
                                <br />
                                <%# Item.Description %>

                            </td>
                        </tr>
                    </table>
                </td>
            </ItemTemplate>
        </asp:ListView>
    </div>

</asp:Content>
