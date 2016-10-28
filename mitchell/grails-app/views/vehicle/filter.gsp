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
        <g:form action="list">
            <g:actionSubmit value="List All Vehicles" action="list"/>
        </g:form><br/>

        <h2>Filter By: </h2>
        <g:form action="filter">
	          <g:select name="ftype" from="${['Year', 'Make', 'Model']}"/>
	          <g:field name ="fparam"/>
	          <g:actionSubmit value="Filter Vehicles" action="filter"/>
	      </g:form><br/>

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
        <g:form action="list">
            <g:actionSubmit value="List All Vehicles" action="list"/>
        </g:form>
    </body>
</html>
