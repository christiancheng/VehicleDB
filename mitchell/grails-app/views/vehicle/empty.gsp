<! Author: Christian Cheng
   Project: mitchell
   File: empty.gsp !>

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
	          <g:field name ="fparam" required=""/>
            <g:actionSubmit value="Filter Vehicles" action="filter"/>
	      </g:form><br/>

        <strong>No vehicles matching your criteria were found.</strong><br/>
        Note: Keywords are case-sensitive.
        <br/><br/>

        <g:form action="list">
            <g:actionSubmit value="List All Vehicles" action="list"/>
        </g:form>
    </body>
</html>

