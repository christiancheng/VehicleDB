<! Author: Christian Cheng
   Project: mitchell
   File: create.gsp !>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Create New Vehicle</title>
    </head>
    <body>
        <h1>Create New Vehicle</h1>
        <g:form action="save">
            Year: <g:field name="year" type="number" min="1950"
                     max="2050" required=""/><br/>
            Make: <g:field name="make" type="text" required=""/><br/>
            Model: <g:field name="model" type="text" required=""/><br/>
            <g:actionSubmit value="Save" />
        </g:form>
    </body>
</html>
