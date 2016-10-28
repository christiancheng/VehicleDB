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
            Year: <g:field name="year"
                   value = "${vehicle.year}"
                   type="number" min="1950"
                   max="2050" required=""/><br/>
            Make: <g:field name="Make"
                   value = "${vehicle.make}"
                   type="text" required=""/><br/>
            Model: <g:field name="Model"
                   value = "${vehicle.model}"
                   type="text" required=""/>
            <g:actionSubmit value="Update" />
        </g:form>
    </body>
</html>

