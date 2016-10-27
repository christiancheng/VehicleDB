<! Author: Christian Cheng
   Project: mitchell
   File: edit.gsp !>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Edit Vehicle</title>
    </head>
    <body>
        <h1>Edit Vehicle</h1>
        <g:form action="update" id="${vehicle.id}">
            Year: <g:field name="Year"
                   value = "${vehicle.Year}"
                   type="number" min="1950"
                   max="2050" required=""/><br/>
            Make: <g:field name="Make"
                   value = "${vehicle.Make}"
                   type="text" required=""/><br/>
            Model: <g:field name="Model"
                   value = "${vehicle.Model}"
                   type="text" required=""/>
            <g:actionSubmit value="Update" />
        </g:form>
    </body>
</html>

