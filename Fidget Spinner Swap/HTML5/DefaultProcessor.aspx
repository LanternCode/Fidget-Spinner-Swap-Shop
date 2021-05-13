<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(Object sender, EventArgs e){

        clsSecurity SecurityManager = new clsSecurity();

        string Password;
        string EMail;

        Password = Request.Form["txtPassword"];
        EMail = Request.Form["txtEmail"];

        if(SecurityManager.Login(EMail, Password) == true)
        {
            Response.Redirect("LoginSuccess.aspx?p="+Password+"&e="+EMail);
        }
        else
        {
           Response.Redirect("LoginFailure.aspx?p="+Password+"&e="+EMail);
        }

    }

</script>

