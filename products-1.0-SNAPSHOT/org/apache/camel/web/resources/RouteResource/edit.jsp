<html>
<head>
<script type='text/javascript' src="<c:url value='/js/dojo/dojo.js'/>"></script>
<script type='text/javascript'
	src="<c:url value='/js/bespin/editor/embed.js'/>"></script>
<script type='text/javascript' src="<c:url value='/js/route.js'/>"></script>

<title>Edit ${it.route.id}</title>
</head>
<body>

<form id="routeForm" action="<c:url value="/routes/${it.route.id}"/>"
	method="post">
<table>
	<tr>
		<td>
		<h2>Edit ${it.route.id}</h2>
		</td>
		<td><input type="submit" value="Save">&nbsp; as &nbsp;<select id="language" name="language">
			<option value="Xml" selected>XML</option>
			<option value="Groovy">Groovy</option>
			<option value="Ruby">Ruby</option>
			<option value="Scala">Scala</option>
		</select></td>
	</tr>
	<tr>
		<td colspan="2"><textarea id="route" name="route"
			style="width: 800px; height: 300px; border: 10px solid #ddd; -moz-border-radius: 10px; -webkit-border-radius: 10px;">${it.routeDefinition}</textarea>
		</td>
	</tr>
</table>

<div class="error">${it.error}</div>

</form>

<!-- Form using Bespin editor not working for some reason... it mangles the route xml so that 
     it can't be loaded back into Camel

<form id="routeForm" action="<c:url value="/routes/${it.route.id}"/>" method="post">
<table>
  <tr>
    <td>
      <h2>Edit ${it.route.id}</h2>
    </td>
    <td>
      <input type="button" value="Save" onclick="submitRoute()">
    </td>
    <td>
      <textarea id="route" name="route" rows="1" cols="1"  style="visibility: hidden;"></textarea>
    </td>
  </tr>
</table>

<div class="error">${it.error}</div>

<div id="editor"
     style="height: 300px; border: 10px solid #ddd; -moz-border-radius: 10px; -webkit-border-radius: 10px;">${it.routeXml}
</div>

</form>

-->

</body>
</html>
