<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    Int32 FSpinnerNo;
    clsFSpinner ASpinner = new clsFSpinner();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            FSpinnerNo = Convert.ToInt32(Request.QueryString["FSpinnerNo"]);
            ASpinner.Find(FSpinnerNo);
        }
        catch
        {
            //error
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fidget Spinner Swap Shop</title>
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

		<div class="absolute--header">
            <p>Would you like to swap this fidget spinner for one of yours? Make a swap offer on the spinner and everyone will be able to send you offers!</p>
		</div>

		<div class="absolute--aSpinner--collection">
            <form method="post" action="aSpinnerGridProcessor.aspx" class="input--form">
			    <table border="1">
                        <tr>
                            <td class="aSpinner--tableData">Spinner No</td><td class="aSpinner--tableData"><input type="text" name="txtSpinnerNo" value="<% Response.Write(ASpinner.FSpinnerNo); %>" readonly="true" /></td>
                        </tr>
                        <tr>
                            <td class="aSpinner--tableData">Name</td><td class="aSpinner--tableData"><input type="text" name="txtSpinnerName" value="<% Response.Write(ASpinner.Title); %>" readonly="true"/></td>
                        </tr>
                        <tr>
                            <td class="aSpinner--tableData">Image</td><td class="aSpinner--tableData"><img class="aSpinner--tableData--image" src="<% Response.Write(ASpinner.Image); %>" alt="Fidget Spinner"/></td>
                        </tr>
                        <tr>
                            <td class="aSpinner--tableData">Present Data</td><td class="aSpinner--tableData"><input type="submit" value="Submit" /></td>
                        </tr>
                        <tr>
                            <td class="aSpinner--tableData"></td><td class="aSpinner--tableData"><input type="hidden" name="txtImageURL" value="<% Response.Write(ASpinner.Image); %>"/></td>
                        </tr>
                </table>
            </form>
		</div>

		
		<div class="absolute--footer">
			<a href="aSpinner.aspx?FSpinnerNo=<% Response.Write(FSpinnerNo); %>">
				<p>Enjoyed the previous version more? Press Here to revert back.</p>
			</a>
		</div>
		
    </main>

</body>
</html>
