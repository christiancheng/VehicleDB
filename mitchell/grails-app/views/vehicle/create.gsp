<! Author: Christian Cheng
   Project: mitchell
   File: create.gsp !>

<html>
    <head>
        <title>Create New Vehicle</title>
    </head>
    <body>
        <h1>Create New Vehicle</h1>
        <g:form action="save">
            Year: <g:field name="Year" type="number" min="1950"
                     max="2050" required=""/><br/>
            Make: <g:field name="Make" type="text" required=""/><br/>
            Model: <g:field name="Model" type="text" required=""/><br/>
            <g:actionSubmit value="Save" />
        </g:form>
    </body>
</html>
