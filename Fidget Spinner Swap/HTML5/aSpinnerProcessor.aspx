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
    <title>Fidget Spinner Swap Shop - Swap your Fidget Spinners here in Leicester!</title>
    <link rel="stylesheet" href="FidgetSSwap.css" />
</head>
<body>
    <header class="absolute--header">
        <h1><a href="Default.aspx">Adam's Fidget Spinner Swap</a></h1>
        <h2>Swapping Fidget Spinners Since 2019</h2>
    </header>
    <article class="absolute--body">
        <form method="post" action="aSpinnerProcessed" class="input--form">
            <table border="1">
                    <tr>
                        <td class="aSpinner--tableData">Spinner No</td><td class="aSpinner--tableData"><input type="text" name="txtSpinnerNo" value="<% Response.Write(FSpinnerNo); %>" /></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData">Name</td><td class="aSpinner--tableData"><input type="text" name="txtSpinnerName" value="<% Response.Write(FSpinnerName); %>"/></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData">Image</td><td class="aSpinner--tableData"><img class="aSpinner--tableData--image" src="<% Response.Write(FSpinnerImageURL); %>" alt="Fidget Spinner"/></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData">Return</td><td class="aSpinner--tableData"><a href="aSpinner.aspx?FSpinnerNo=<% Response.Write(FSpinnerNo); %>">Return</a></td>
                    </tr>
                    <tr>
                        <td class="aSpinner--tableData"></td><td class="aSpinner--tableData"></td>
                    </tr>
            </table>
        </form>
    </article>
</body>
</html>
