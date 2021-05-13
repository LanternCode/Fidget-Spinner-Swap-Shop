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
    <link rel="stylesheet" href="FidgetSSwap.css" />
</head>
<body>
    <header class="absolute--header">
        <h1><a href="Default.aspx">Adam's Fidget Spinner Swap</a></h1>
        <h2>Swapping Fidget Spinners Since 2019</h2>
		<h3><a href="aSpinnerGrid.aspx?FSpinnerNo=<% Response.Write(FSpinnerNo); %>">Press me to switch to the new graphic layout of the swap shop!</a></h3>
    </header>
    <article class="absolute--body">
        <form method="post" action="aSpinnerProcessor.aspx" class="input--form">
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
                        <td class="aSpinner--tableData"></td><td class="aSpinner--tableData"><input type="hidden" name="txtImageURL" value="<% Response.Write(ASpinner.Image); %>" /></td>
                    </tr>
            </table>
        </form>
    </article>
</body>
</html>
