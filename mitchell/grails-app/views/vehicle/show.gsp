<! Author: Christian Cheng
   Project: mitchell
   File: show.gsp !>

<html>
    <head>
        
    <meta name="layout" content="main"/>
        <meta name="layout" content="main"/>
        <title>Show Vehicle</title>
    </head>
    <body>
        <h1>Show Vehicle</h1>
        Id: ${vehicle.id} <br/>
        Year: ${vehicle.Year} <br/>
        Make: ${vehicle.Make} <br/>
        Model: ${vehicle.Model} <br/>
        <g:link action="edit" id="${vehicle.id}">Edit</g:link><br/>
        <g:link action="delete" id="${vehicle.id}">Delete</g:link><br/>
        <g:link action="list" id="${vehicle.id}">List All Vehicles</g:link>
    </body>
</html>
