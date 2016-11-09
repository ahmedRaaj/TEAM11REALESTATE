<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Properties.aspx.cs" Inherits="TEAM11REALESTATE.Admin.Properties" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/bootstrap.js"></script>
    <div class="row">
        <div class="col-md-3 ">
            <label class="control-label text-success h3">My Properties</label>
        </div>
    </div>

    <div class="row">
        <div class="col-md-7 col-md-offset-2 jumbotron">
            <form class="form-horizontal">
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
                            <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="DistrictName" DataValueField="DistrictID">
                            </asp:DropDownList>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SA43TEAM11REALESTATEConnectionString %>" SelectCommand="SELECT [DistrictCode], [DistrictID], [DistrictName] FROM [Districts]" OldValuesParameterFormatString="original_{0}"></asp:SqlDataSource>
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
                            <asp:DropDownList ID="ddlPropertyType" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SA43TEAM11REALESTATEConnectionString %>" SelectCommand="SELECT [TypeName], [PropertyTypeID], [LeasePriod] FROM [PropertyTypes]" OldValuesParameterFormatString="original_{0}"></asp:SqlDataSource>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <strong class="col-md-4" style="margin-top: 12px">Top Date </strong>
                        <div class="col-md-6" style="margin-top: 12px">
                            <asp:Calendar ID="cldTopDate" runat="server"></asp:Calendar>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <strong class="col-md-4" style="margin-top: 12px">Release Date </strong>
                        <div class="col-md-6" style="margin-top: 12px">
                            <asp:Calendar ID="cldReleaseDate" runat="server"></asp:Calendar>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 12px">
                    <strong class="col-md-4" style="margin-top: 12px">Description </strong>
                    <asp:TextBox ID="txtaDescription" runat="server" CssClass="col-md-8" Height="58px" TextMode="MultiLine" Width="209px"></asp:TextBox>
                </div>

                <div class="row">
                    <div class="form-group form-inline">
                        <div class="col-md-4">
                            <strong class="col-md-4">Images</strong>
                        </div>
                        
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                                <div>
                                    <asp:FileUpload ID="imagfileupload" onchange="this.form.submit()" runat="server" />
                                </div>
                              
                                <asp:Image ID="Image1" runat="server" Height="134px" Width="156px" />

                                <br />
                                <br/>
                     
                                <br />
                             </ContentTemplate>
                        </asp:UpdatePanel>
                      
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-6 col-md-3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="btnCancel" runat="server" Text="Back" OnClick="btnCancel_Click" />
                    </div>

                </div>
            </form>
        </div>
    </div>

    <script>
        $(document)
            .ready(function() {
            });
    </script>
</asp:Content>
