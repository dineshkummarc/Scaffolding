<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        Widget
        <input type="text" id="Text1" class="tbQuantity" />
        <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="quantity"  class="hQuantity"  value="1">
            <input type="hidden" name="hosted_button_id" value="XXXX">
            <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_cart_LG.gif" border="0"
                name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1"
                height="1"> 
        </form>
    </div>
    
    <div>  
        Widget-2
        <input type="text" id="Text2"  class="tbQuantity"  /> 
        <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="quantity"  class="hQuantity"  value="1">
            <input type="hidden" name="hosted_button_id" value="XXXXX">
            <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" 
                alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
        </form>

    </div> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavaScript" runat="server"> 
    <script type="text/javascript" src="/scripts/jquery-1.3.2.min.js"></script> 
    <script type="text/javascript">
        $('.tbQuantity').blur(function() {
            var x = $(this).val()
            $(this).next('form').find('.hQuantity').val(x);
        }); 
    </script>

</asp:Content>
