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
            Year: <g:textField name="Year" /><br/>
            Make: <g:textField name="Make" /><br/>
            Model: <g:textField name="Model" /><br/>
            <g:actionSubmit value="Save" />
        </g:form>
    </body>
</html>
