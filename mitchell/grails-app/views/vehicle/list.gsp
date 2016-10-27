<! Author: Christian Cheng
   Project: mitchell
   File: list.gsp !>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>List Vehicles</title>
    </head>
    <body>
        <h1>List Vehicles</h1>
        <g:link action="create">Create New Vehicle</g:link><br/><br/>
        <g:each in="${vehicles}" var="vehicle">
             <h2>Vehicle ${vehicle.id}</h2>
             ID: ${vehicle.id} <br/>
             Year: ${vehicle.Year} <br/>
             Make: ${vehicle.Make} <br/>
             Model: ${vehicle.Model} <br/>
             <g:link action="edit" id="${vehicle.id}">Edit</g:link><br/>
             <g:link action="delete"
             id="${vehicle.id}">Delete</g:link><br/><br/>
        </g:each>
        <g:link action="create">Create New Vehicle</g:link>
    </body>
</html>
