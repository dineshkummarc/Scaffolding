<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <th>
                table
            </th>
        </tr>
        <tr>
            <td>
                <div>
                    Widget
                    <input type="text" id="Text1" class="tbQuantity" />
                    <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="quantity" class="hQuantity" value="1">
                        <input type="hidden" name="hosted_button_id" value="10342004">
                        <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_cart_LG.gif" border="0"
                            name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" src="https://www.paypal.com/en_US/i/scr/pixel.gif"
                            height="1" border="0" width="1">
                    </form>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Widget-2
                    <input type="text" id="Text2" class="tbQuantity" />
                    <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="quantity" class="hQuantity" value="1">
                        <input type="hidden" name="hosted_button_id" value="10343883">
                        <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_cart_LG.gif" border="0"
                            name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" src="https://www.paypal.com/en_US/i/scr/pixel.gif"
                            height="1" border="0" width="1">
                    </form>
                </div>
            </td>
        </tr>
    </table>
    
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
