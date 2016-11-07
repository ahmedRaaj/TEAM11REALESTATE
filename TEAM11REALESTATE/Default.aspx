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
                 <td>
                   <select class="select">
                       <option>{PlaceHolder}</option>
                   </select>
               </td>
               
           </tr>
       </table>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
