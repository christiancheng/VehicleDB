<! Author: Christian Cheng
   Project: mitchell
   File: show.gsp !>

<html>
    <head>
        <title>Show Vehicle</title>
    </head>
    <body>
        <h1>Show Vehicle</h1>
        Year: ${vehicle.Year} <br/>
        Make: ${vehicle.Make} <br/>
        Model: ${vehicle.Model} <br/>
        <g:link action="edit" id="${vehicle.Id}">Edit</g:link><br/>
        <g:link action="delete" id="${vehicle.Id}">Delete</g:link>
    </body>
</html>
