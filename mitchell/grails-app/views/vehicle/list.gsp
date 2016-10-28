<! Author: Christian Cheng
   Project: mitchell
   File: list.gsp !>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>List All Vehicles</title>
    </head>
    <body>
        <h1>List All Vehicles</h1>
        <g:form action="create">
            <g:actionSubmit value="Create New Vehicle" action="create"/>
        </g:form><br/>

        <h2>Filter By: </h2>
        <g:form action="filter">
	          <g:select name="ftype" from="${['Year', 'Make', 'Model']}"/>
	          <g:field name ="fparam" required=""/>
	          <g:actionSubmit value="Filter Vehicles" action="filter"/>
	      </g:form><br/>

        <g:each in="${vehicles}" var="vehicle">
             <g:link action="show" id="${vehicle.id}">
             <h2>Vehicle ${vehicle.id}</h2>
             </g:link>
             ID: ${vehicle.id} <br/>
             Year: ${vehicle.year} <br/>
             Make: ${vehicle.make} <br/>
             Model: ${vehicle.model} <br/>
             <g:link action="edit" id="${vehicle.id}">Edit</g:link><br/>
             <g:link action="delete"
             id="${vehicle.id}">Delete</g:link><br/><br/>
        </g:each>
        <g:form action="create">
            <g:actionSubmit value="Create New Vehicle" action="create"/>
        </g:form>
    </body>
</html>
