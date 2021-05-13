<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string EMail = Request.Form["txtEMail"];
        string Password = Request.Form["txtPassword"];
        string PasswordConfirm = Request.Form["txtPasswordConfirm"];
        clsSecurity SecurityManager = new clsSecurity();
        string Error = SecurityManager.SignUp(EMail, Password, PasswordConfirm);
        if (Error == "")
        {
            Response.Redirect("SignUpSuccess.html");
        }
        else Response.Redirect("SignUpFailure.html");
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fidget Spinner Swap Shop</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
