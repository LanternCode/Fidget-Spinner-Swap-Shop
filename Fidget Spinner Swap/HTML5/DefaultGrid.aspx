<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
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
			<form method="POST" action="DefaultProcessor.aspx">
				<label>Email</label>
				<br />
				<input class="" type="email" name="txtEmail" />
				<br />
				<label>Password</label>
				<br />
				<input class="" type="password" name="txtPassword" />
				<br />
				<input class="absolute--header--form__login" type="submit" value="Login" />
                <input class="absolute--header--form__login" type="reset" value="Reset Form" />
			</form>
            <div class="EnterSwap">
            <form method="post" action="SwapProcessor.aspx?s=1">
                <label>Name of the Fidget Spinner that you wish to offer me:</label><br />
                <input type="text" name="txtFSpinnerName" /><br />

                <label>Description of your offer:</label><br />
                <textarea class="OfferDesc" name="txtOfferDesc" rows="8" cols="80"></textarea><br />
                <input class="SubmitOffer" type="submit" value="Send Offer" />
            </form>
        </div>
			<div class="absolute--header--buttons">
                <a href="SignupGrid.aspx"><button class="absolute--header--buttons__button">Sign up</button></a><br />
				<button class="absolute--header--buttons__button">Resend Password</button><br />
				<button class="absolute--header--buttons__button">Adam's Wish List</button><br />
				<button class="absolute--header--buttons__button">About</button>
			</div>
		</div>

		<div class="absolute--collection">
			<div class="absolute--collection--header">
				<h2 class="absolute--collection--header__title">My Collection</h2>
				<div class="absolute--collection--header__searchbar">
					<form action="GET" method="">

						<label>Spinner's name: </label>
						<input type="text" name="txtFilter" />

						<br />
						<input class="absolute--collection--header__search" type="submit" value="Search" />
					</form>
					<button class="absolute--collection--header__reset">Reset</button>
				</div>
				<br />
				<span class="absolute--collection--header__records"><span>(n)</span> record(s) found</span>
			</div>
			<div class="absolute--collection--body">
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
					%>
					<tr>
						<%
						%>
						<td>
                            <a href="aSpinnerGrid.aspx?FSpinnerNo=<%
							    Response.Write(MySpinners.FSpinnerList[Index].FSpinnerNo);
							    %>">
							    <%
							    Response.Write(MySpinners.FSpinnerList[Index].FSpinnerNo);
							    %>
                            </a>
						</td><%
						%>
						<td>
							<%
							Response.Write(MySpinners.FSpinnerList[Index].Title);
							%>
						</td><%
						%>
					</tr><%
					Index++;
					}
					%>
				</table><%
				%>
			</div>
		</div>

		
		<div class="absolute--footer">
			<a href="Default.aspx">
				<p>Enjoyed the previous version more? Press Here to revert back.</p>
			</a>
		</div>
		
    </main>
</body>
</html>