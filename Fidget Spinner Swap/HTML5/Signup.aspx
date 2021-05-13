<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create a new account and swap Fidget Spinners for free!</title>
    <link rel="stylesheet" href="FidgetSSwap.css" />
</head>
<body>

    <header class="absolute--header">
        <h1><a href="Default.aspx">Adam's Fidget Spinner Swap</a></h1>
        <h2>Swapping Fidget Spinners Since 2019</h2>
		<h3><a href="SignupGrid.aspx">Press me to switch to the new graphic layout of the swap shop!</a></h3>
    </header>

    <div class="signup--form">
        <h2>Sign Up</h2>
        <form method="post" action="SignupProcessor.aspx">
            <label>E-Mail Address:</label><br />
            <input type="email" name="txtEmail" required="required" />
            <br /><br />

            <label>Password:</label><br />
            <input type="password" name="txtPassword" required="required" />
            <br /><br />

            <label>Confirm Password:</label><br />
            <input type="password" name="txtPasswordConfirm" required="required" />
            <br /><br />

            <input type="submit" value="Create new account" />
        </form>
    </div>
</body>
</html>
