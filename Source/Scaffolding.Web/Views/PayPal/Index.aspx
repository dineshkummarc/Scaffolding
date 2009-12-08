<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
    <div> 
        Widget
        <input type="text" id="tbQuantity" />
    </div> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="JavaScript" runat="server">  
    <script type="text/javascript" src="/scripts/jquery-1.3.2.min.js"></script> 
    <script type="text/javascript"  >
        $("#tbQuantity").blur(function() {
            $("#hQuantity").val($(this).val());
        }); 
    </script> 
</asp:Content>