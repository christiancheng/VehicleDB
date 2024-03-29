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
            Make: <g:field name="make"
                   value = "${vehicle.make}"
                   type="text" required=""/><br/>
            Model: <g:field name="model"
                   value = "${vehicle.model}"
                   type="text" required=""/><br/><br/>
            <g:actionSubmit value="Update" /> 
            <g:actionSubmit value="Cancel" action="list"/>
        </g:form>
           
    </body>
</html>

