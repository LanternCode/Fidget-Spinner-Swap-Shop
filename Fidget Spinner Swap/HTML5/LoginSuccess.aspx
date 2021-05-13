<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    string password;
    string EMail;

    protected void Page_Load(object sender, EventArgs e)
    {
        password = Request.QueryString["p"];
        EMail = Request.QueryString["e"];

        password = HttpContext.Current.Server.HtmlEncode(password);
        EMail = HttpContext.Current.Server.HtmlEncode(EMail);
    }

</script>

<html>
    <head>
         <meta charset="utf-8" />
        <title>Fidget Spinner Swap Shop - Swap your Fidget Spinners here in Leicester!</title>
        <link rel="stylesheet" href="FidgetSSwap.css" />
    </head>
    <body>
        <header class="absolute--header">
            <h1>Adam's Fidget Spinner Swap</h1>
            <h2>You are now logged in!</h2>
            <a href="Default.aspx">Press here to return back to the Swapshop's homepage</a>
        </header>
        <main class="BelowHeader">
            Entered EMail: <% Response.Write(EMail); %>
            <br />
            Entered Password: <% Response.Write(password); %>
        </main>
    </body>
</html>
