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
        <h2>Vehicle ${vehicle.id}</h2>
        ID: ${vehicle.id} <br/>
        Year: ${vehicle.year} <br/>
        Make: ${vehicle.make} <br/>
        Model: ${vehicle.model} <br/>
        <g:link action="edit" id="${vehicle.id}">Edit</g:link><br/>
        <g:link action="delete" id="${vehicle.id}">Delete</g:link><br/><br/>
        <g:link action="list" id="${vehicle.id}">List All Vehicles</g:link>
    </body>
</html>
