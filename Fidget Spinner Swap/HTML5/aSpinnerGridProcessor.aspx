<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    Int32 FSpinnerNo;
    string FSpinnerName;
    string FSpinnerImageURL;
    clsFSpinner ASpinner = new clsFSpinner();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            FSpinnerNo = Convert.ToInt32(Request.Form["txtSpinnerNo"]);
            FSpinnerName = Request.Form["txtSpinnerName"];
            FSpinnerImageURL = Request.Form["txtImageURL"];
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
			<!--<form method="" action="" class="input--form">
                <label>1</label><br />
                <input type="text" name=""/>
                <br />
                <label>2</label><br />
                <input type="text" name="" />
                <br />
                <input type="submit" value="Submit"/>
            </form>-->
            <p>Would you like to swap this fidget spinner for one of yours? Make a swap offer on the spinner and everyone will be able to send you offers!</p>
		</div>

		<div class="absolute--aSpinner--collection">
				<table border="1">
                    <tr>
                        <td class="aSpinner--tableData">Spinner No</td><td class="aSpinner--tableData"><input type="text" name="txtSpinnerNo" value="<% Response.Write(FSpinnerNo); %>" readonly="true" /></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData">Name</td><td class="aSpinner--tableData"><input type="text" name="txtSpinnerName" value="<% Response.Write(FSpinnerName); %>" readonly="true"/></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData">Image</td><td class="aSpinner--tableData"><% Response.Write(FSpinnerImageURL); %></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData">Return</td><td class="aSpinner--tableData"><a href="aSpinnerGrid.aspx?FSpinnerNo=<% Response.Write(FSpinnerNo); %>">Return</a></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData"></td><td class="aSpinner--tableData"></td>
                    </tr>
            </table>
		</div>

		
		<div class="absolute--footer">
			<a href="aSpinnerGrid.aspx?FSpinnerNo=<% Response.Write(FSpinnerNo); %>">
				<p>Enjoyed the previous version more? Press Here to revert back.</p>
			</a>
		</div>
		
    </main>

</body>
</html>
