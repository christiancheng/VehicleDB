<! Author: Christian Cheng
   Project: mitchell
   File: list.gsp !>

<html>
    <head>
        <title>List Vehicles</title>
    </head>
    <body>
        <h1>List Vehicles</h1>
        <g:each in="${vehicles}" var="vehicle">
             Year: ${vehicle.Year} <br/>
             Make: ${vehicle.Make} <br/>
             Model: ${vehicle.Model} <br/>
             <g:link action="edit" id="${vehicle.Id}">Edit</g:link><br/>
             <g:link action="delete" id="${vehicle.Id}">Delete</g:link><br/>
        </g:each>
        <g:link action="create">Create New Vehicle</g:link>
    </body>
</html>
