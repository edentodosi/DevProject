<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose a player:</h3>
  <form method="get">
    <input type="checkbox" name="player" value="Haim Cohen">Haim Cohen
    <input type="checkbox" name="player" value="Eyal Shani">Eyal Shani
    <input type="checkbox" name="player" value="Israel Aharoni">Israel Aharoni
	<input type="checkbox" name="player" value="Michal Anski">Michal Anski
    <input type="submit" value="Submit">
  </form>
 
  <%
  String[] players = request.getParameterValues("player");
  if (players != null) {
  %>
    <h3>You have selected player(s):</h3>
    <ul>
  <%
      for (int i = 0; i < players.length; ++i) {
  %>
        <li><%= players[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>