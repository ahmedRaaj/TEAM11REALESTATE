<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgentsView.aspx.cs" Inherits="TEAM11REALESTATE.Agents.AgentsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h3 style="text-align:center">MANAGE AGENTS</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="AgentID" DataSourceID="SqlDataSource1" Width="722px" >
        <Columns>
            <asp:BoundField DataField="AgentID" HeaderText="AgentID" InsertVisible="False" ReadOnly="True" SortExpression="AgentID" />
            <asp:BoundField DataField="CEANumber" HeaderText="CEANumber" SortExpression="CEANumber" />
            <asp:BoundField DataField="AgencyID" HeaderText="AgencyID" SortExpression="AgencyID" />
            <asp:BoundField DataField="SalesPersonName" HeaderText="SalesPersonName" SortExpression="SalesPersonName" />
            <asp:BoundField DataField="SalesPersonMobileNumber" HeaderText="SalesPersonMobileNumber" SortExpression="SalesPersonMobileNumber" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <br />   
    <table style="width: 100%; height: 90px;">
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label1" runat="server" Text="CEANumber"></asp:Label>
            </td>
            <td style="width: 620px">
                <asp:TextBox ID="txtCEANumber" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px; height: 33px;">
                <asp:Label ID="Label2" runat="server" Text="AgencyID"></asp:Label>
            </td>
            <td style="height: 33px; width: 620px;">
                <asp:DropDownList ID="ddlAgencyID" runat="server" DataSourceID="SqlDataSource2" DataTextField="AgencyID" DataValueField="AgencyID" Height="31px"  Width="204px" style="margin-top: 0">
                </asp:DropDownList>
            </td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label6" runat="server" Text="SalesPersonName"></asp:Label>
            </td>           
            <td style="width: 620px">
                <asp:TextBox ID="txtSalesPersonName" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label7" runat="server" Text="SalesPersonMobileNumber"></asp:Label>
            </td>
            
            <td style="width: 620px">
                <asp:TextBox ID="txtSalesPersonMobileNumber" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            
            <td style="width: 620px">
                <asp:TextBox ID="txtEmail" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px; height: 88px;">
                
                <asp:Label ID="Label9" runat="server" Text="Upload Photo"></asp:Label>
                
            </td>
            
            
            <td style="width: 620px; height: 88px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="204px" />
            </td>
        </tr>
        <tr>
            <td style="width: 214px; height: 31px;">
                              
    <asp:Button ID="Button1" runat="server" Text="INSERT" OnClick="Button1_Click1" />
        

    
            </td>
            
            <td style="width: 620px; height: 31px;">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateModel %>" 
        SelectCommand="SELECT * FROM [Agents]" 
        UpdateCommand="UPDATE Agents SET  CEANumber= @CEANumber,AgencyID=@AgencyID,SalesPersonName=@SalesPersonName,SalesPersonMobileNumber=@SalesPersonMobileNumber, Email = @Email WHERE AgentID = @AgentID"
        InsertCommand="INSERT INTO Agents(CEANumber,AgencyID,SalesPersonName,SalesPersonMobileNumber,Email) VALUES (@CEANumber, @AgencyID,@SalesPersonName,@SalesPersonMobileNumber,@Email)">
        <InsertParameters>
    <asp:ControlParameter Name="CEANumber" ControlID="txtCEANumber" Type="String" />
    <asp:ControlParameter Name="AgencyID" ControlID="ddlAgencyID" Type="String" />
    <asp:ControlParameter Name="SalesPersonName" ControlID="txtSalesPersonName" Type="String" />
    <asp:ControlParameter Name="SalesPersonMobileNumber" ControlID="txtSalesPersonMobileNumber" Type="String" />
    <asp:ControlParameter Name="Email" ControlID="txtEmail" Type="String" /> 
</InsertParameters>       
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateModel %>" SelectCommand="SELECT [AgencyID] FROM [Agencies]"></asp:SqlDataSource>
</asp:Content>
