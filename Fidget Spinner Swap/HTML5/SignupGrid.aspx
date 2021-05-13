<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create a new account and swap Fidget Spinners for free!</title>
    <link rel="stylesheet" href="FidgetSSwapGrid.css" />
</head>
<body>
    <main class="absolute">

        <div class="absolute--left">
            <a href="DefaultGrid.aspx">
			    <div class="absolute--left--vertical">
				    <div class="absolute--left--vertical__left">Fidget</div>
				    <div class="absolute--left--vertical__right">
					    <div class="absolute--left--vertical__right__empty">

					    </div>
					    Spinner
				    </div>
			    </div>
			    <div class="absolute--left--horizontal">
				    Swap &copy; 2019
			    </div>
            </a>
		</div>

        <div class="absolute--signup--header">
            <div class="absolute--signup--header__text">
			    <p class="absolute--header--signup">Welcome! I'm glad you decided to join us and create an account on the Fidget Spinner Swap Shop! Now that you've made the most important decision, simply
                    fill the form below and press the button! Once your account is created, you will be able to offer new swaps to the users of the shop!
			    </p>
            </div>
		</div>

        <div class="absolute--signup--collection">
            <div class="absolute--signup--form">
                <h2>Sign Up</h2>
                <form method="POST" action="SignupProcessor.aspx">
                    <label>E-Mail Address:</label><br />
                    <input type="email" name="txtEmail" />
                    <br /><br />

                    <label>Password:</label><br />
                    <input type="password" name="txtPassword" />
                    <br /><br />

                    <label>Confirm Password:</label><br />
                    <input type="password" name="txtPasswordConfirm" />
                    <br /><br />

                    <input type="submit" value="Create new account" />
                </form>
            </div>
        </div>

        <div class="absolute--footer">
			<a href="Signup.aspx">
				<p>Enjoyed the previous version more? Press Here to revert back.</p>
			</a>
		</div>
    </main>
</body>
</html>
