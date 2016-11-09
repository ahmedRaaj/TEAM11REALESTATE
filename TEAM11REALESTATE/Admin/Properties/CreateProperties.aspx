<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProperties.aspx.cs" Inherits="TEAM11REALESTATE.Admin.Properties.CreateProperties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-3 ">
            <label class="control-label text-success h3">My Properties</label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-7 col-md-offset-2 jumbotron">
          
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-4">
                            <label class="control-label text-left">Property Name</label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtPropertyName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group" style="margin-top: 48px;">
                        <div class="col-md-4">
                            <label class="control-label text-left">Address</label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtUnitNumber" CssClass="form-control" placeholder="Unit Number" runat="server"></asp:TextBox>
                        </div>
                        <div class=" col-md-8 col-md-offset-4" style="margin-top: 12px;">
                            <asp:TextBox ID="txtBlockNumber" CssClass="form-control" placeholder="Block Number" runat="server"></asp:TextBox>
                        </div>
                        <div class=" col-md-8 col-md-offset-4" style="margin-top: 12px;">
                            <asp:TextBox ID="txtStreetName" CssClass="form-control" placeholder="Street Name" runat="server"></asp:TextBox>
                        </div>
                        <div class=" col-md-8 col-md-offset-4" style="margin-top: 12px;">
                            <asp:TextBox ID="txtPostCode" CssClass="form-control" placeholder="Post Code" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-4" style="margin-top: 12px;">
                            <label class="control-label">District</label>
                        </div>
                        <div class="col-md-8 col-sm-6 col-lg-7 col-xs-6" style="margin-top: 12px;">
                            <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" DataTextField="DistrictName" DataValueField="DistrictID" ItemType="TEAM11REALESTATE.Models.District" SelectMethod="GetDistricts">
                            </asp:DropDownList>
                        </div>
                       
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-4" style="margin-top: 12px">
                            <label class="control-label text-left">Price</label>
                        </div>
                        <div class="col-md-8" style="margin-top: 12px">
                            <asp:TextBox ID="txtPricePSF" CssClass="form-control" placeholder="Price for Per Square" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-4" style="margin-top: 12px">
                            <label class="control-label">Size</label>
                        </div>
                        <div class="col-md-8" style="margin-top: 12px">
                            <asp:TextBox ID="txtSizePSF" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-4" style="margin-top: 12px">
                            <label class="control-label">Rooms</label>
                        </div>
                        <div class="col-md-8" style="margin-top: 12px">
                            <asp:TextBox ID="txtRooms" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group form-inline">
                        <div class="col-md-4" style="margin-top: 12px;">
                            <label class="control-label">Property Type</label>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-7 col-xs-6" style="margin-top: 12px;">
                            <asp:DropDownList ID="ddlPropertyType" runat="server" CssClass="form-control" ItemType="TEAM11REALESTATE.Models.PropertyType" 
                                DataValueField="PropertyTypeID" DataTextField="TypeName" SelectMethod="GetPropertyTypes">
                            </asp:DropDownList>
                           
                        </div>
                    </div>
                </div>
            <div class="row">
                <div class="form-group form-inline">
                    <div class="col-md-4" style="margin-top: 12px;">
                            <label class="control-label">Sellers</label>
                     </div>
                    <div class="col-md-6 col-sm-6 col-lg-7 col-xs-6" style="margin-top: 12px;">
                         <asp:DropDownList ID="ddlSeller" runat="server" CssClass="form-control" ItemType="TEAM11REALESTATE.Models.Seller" 
                                DataValueField="SellerID" DataTextField="SellerName" SelectMethod="GetSellers">
                            </asp:DropDownList>
                          
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group form-inline">
                    <div class="col-md-4" style="margin-top: 12px;">
                            <label class="control-label">Agents</label>
                     </div>
                    <div class="col-md-6 col-sm-6 col-lg-7 col-xs-6" style="margin-top: 12px;">
                        
                              <asp:DropDownList ID="ddlAgent" runat="server" CssClass="form-control" ItemType="TEAM11REALESTATE.Models.Agent" 
                                DataValueField="AgentID" DataTextField="SalesPersonName" SelectMethod="GetAgents">
                            </asp:DropDownList>
                    </div>
                </div>
            </div>
                
                <div class="row">
                    <div class="form-group">
                        <strong class="col-md-4" style="margin-top: 12px">Top Date </strong>
                        <div class="col-md-6" style="margin-top: 12px">
                           <%-- <asp:Calendar ID="cldTopDate" runat="server" OnSelectionChanged="cldTopDate_SelectionChanged"></asp:Calendar>--%>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group">
                        <strong class="col-md-4" style="margin-top: 12px">Release Date </strong>
                        <div class="col-md-6" style="margin-top: 12px">
                         <%--   <asp:Calendar ID="cldReleaseDate" runat="server" OnSelectionChanged="cldReleaseDate_SelectionChanged"></asp:Calendar>--%>
                        </div>
                    </div>
                </div>
                
                <div class="row" style="margin-top: 12px">
                    <strong class="col-md-4" style="margin-top: 12px">Description </strong>
                
                    <asp:TextBox ID="txtaDescription" runat="server" Height="58px" TextMode="MultiLine" Width="209px"></asp:TextBox>
                </div>
                
                <div class="row">
                    <div class="form-group form-inline">
                         <br />
                        <div >
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                        </div>
                     <%--   <asp:ImageButton ID="imageupload1" OnClientClick="upload()" CssClass="col-md-2" runat="server" Height="168px" Width="168px" ImageUrl="~/Images/empity.svg.png" />
                        <asp:ImageButton ID="ImageButton2" OnClientClick="upload()" CssClass="col-md-2" runat="server" Height="168px" Width="168px" ImageUrl="~/Images/empity.svg.png" />
                        <asp:ImageButton ID="ImageButton3" OnClientClick="upload()" CssClass="col-md-2" runat="server" Height="168px" Width="168px" ImageUrl="~/Images/empity.svg.png" />--%>
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-6 col-md-3">
                        <asp:Button ID="btnSubmitPropery" runat="server" Text="Submit" OnClick="btnSubmitPropery_Click" />
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
