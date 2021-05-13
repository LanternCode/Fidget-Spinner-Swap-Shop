<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Fidget Spinner Swap Shop</title>
    <link rel="stylesheet" href="FidgetSSwap.css" />
</head>
<body>

    <header class="absolute--header">
        <h1><a href="Default.aspx">Adam's Fidget Spinner Swap</a></h1>
        <h2>Swapping Fidget Spinners Since 2019</h2>
		<h3><a href="DefaultGrid.aspx">Press me to switch to the new graphic layout of the swap shop!</a></h3>
    </header>

    <article class="absolute--promotional">
        <img class="absolute--promotional__image"src="Fidget-Spinner-Floral.jpg" />
    </article>

    <article class="absolute--collection">
        <header class="collection--header">
            <div class="collection--header--searchbar">
                <h2 class="collection--header--h2">My Collection</h2>
                <form class="collection--search" action="GET" method="">
                    <label>Search: </label>
                    <input type="text" name="txtFilter" />
                    <input type="submit" value="Search" />
                </form>
                <button>Reset</button>
                <span><span>(n)</span> record(s) found</span>
            </div>
        </header>
        <div class="MainTable">
            <%
                clsFSpinnerCollection MySpinners = new clsFSpinnerCollection();
                Int32 Index = 0;
                Int32 RecordCount = MySpinners.Count;
                %>
                <table border="1">
                    <tr>
                        <th>
                            No.
                        </th>
                        <th>
                            Name
                        </th>
                    </tr>
                <%
                while(Index < RecordCount)
                {
                    %><tr><%
                        %><td><a href="aSpinner.aspx?FSpinnerNo=<%
                            Response.Write(MySpinners.FSpinnerList[Index].FSpinnerNo);
                        %>"><%
                            Response.Write(MySpinners.FSpinnerList[Index].FSpinnerNo);
                        %></a></td><%
                        %><td><%
                            Response.Write(MySpinners.FSpinnerList[Index].Title);
                        %></td><%
                    %></tr><%
                    Index++;
                }
                %></table><%
              %>
        </div>
        <div class="EnterSwap">
            <form method="post" action="SwapProcessor.aspx?s=0">
                <label>Name of the Fidget Spinner that you wish to offer me:</label><br />
                <input type="text" name="txtFSpinnerName" /><br />

                <label>Description of your offer:</label><br />
                <textarea class="OfferDesc" name="txtOfferDesc" rows="8" cols="80"></textarea><br />
                <input class="SubmitOffer" type="submit" value="Send Offer" />
            </form>
        </div>
    </article>

    <nav>
            <a href="Signup.aspx"><button class="button--signup">Sign up</button></a>
            <form method="POST" action="DefaultProcessor.aspx">
                <label>Email</label>
                <br />
                <input class="nav--input" type="email" name="txtEmail" />
                <br />
                <label>Password</label>
                <br />
                <input class="nav--input" type="password" name="txtPassword" />
                <br />
                <input class="nav--input" type="submit" value="Login" />
            </form>
            <button class="button--resend_password">Resend Password</button>
            <button class="button--wishlist nav--separator">Adam's Wish List</button>
            <button class="button--about">About</button>
    </nav>
</body>
</html>