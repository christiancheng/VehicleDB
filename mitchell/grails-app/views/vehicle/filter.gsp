<! Author: Christian Cheng
   Project: mitchell
   File: filter.gsp !>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>List Vehicles by Filter</title>
    </head>
    <body>
        <h1>List Vehicles by Filter</h1>
        <g:link action="list">List All Vehicles</g:link><br/><br/>
        <g:each in="${vehicles}" var="vehicle">
             <h2>Vehicle ${vehicle.id}</h2>
             ID: ${vehicle.id} <br/>
             Year: ${vehicle.year} <br/>
             Make: ${vehicle.make} <br/>
             Model: ${vehicle.model} <br/>
             <g:link action="edit" id="${vehicle.id}">Edit</g:link><br/>
             <g:link action="delete"
             id="${vehicle.id}">Delete</g:link><br/><br/>
        </g:each>
        <g:link action="create">Create New Vehicle</g:link>
    </body>
</html>
