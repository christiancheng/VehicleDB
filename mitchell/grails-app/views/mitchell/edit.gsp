<! Author: Christian Cheng
   Project: mitchell
   File: edit.gsp !>

<html>
    <head>
        <title>Edit Vehicle</title>
    </head>
    <body>
        <h1>Edit Vehicle</h1>
        <g:form action="update" Id="${vehicle.Id}">
            Year: <g:textField Year="Year"
                     value = "${vehicle.Year}"/><br/>
            Make: <g:textField Make="Make"
                     value = "${vehicle.Make}"/><br/>
            Model: <g:textField Model="Model"
                     value = "${vehicle.Model}"/>
            <g:actionSubmit value="Update" />
        </g:form>
    </body>
</html>

