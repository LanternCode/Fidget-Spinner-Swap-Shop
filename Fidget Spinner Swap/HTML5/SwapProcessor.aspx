<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 source = Convert.ToInt32(Request.QueryString["s"]);
        string swapTitle = Request.Form["txtFSpinnerName"];
        string swapMessage = Request.Form["txtOfferDesc"];

        clsSecurity SecurityManager = new clsSecurity();

        Boolean TitleSecure = SecurityManager.ValidateInput(swapTitle);
        Boolean MessageSecure = SecurityManager.ValidateInput(swapMessage);

        if (TitleSecure && MessageSecure)
        {
            if (source == 0)
                Response.Redirect("AddSwap.html");
            else Response.Redirect("AddSwapGrid.html");
        }
        else
        {
            if (source == 0)
                Response.Redirect("AddSwapError.html");
            else Response.Redirect("AddSwapErrorGrid.html");
        }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Figet Spinner Swap Shop</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
