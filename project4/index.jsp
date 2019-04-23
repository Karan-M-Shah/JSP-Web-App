<!DOCTYPE html>
<html>
    <head>
        <title>Remote Database Management</title>
        <style type="text/css">
            body {
                background-color: blue;
            }
            
            p, h1 {
                color: white;
                text-align: center;
            }
            
            form {
                margin: 0 auto;
                text-align: center;
            }
            
            textarea {
                background-color: black;
                border: 1px solid white;
                color: limegreen;
                display: inline-block;
                margin: 0 auto;
                width: 30%;
                height: 200px;
            }
            
            input {
                background-color: black;
                color: limegreen;
                display: inline-block;
                margin: 0 auto;
                text-align: center;
            }
            
            table {
                border: 1px solid white;
                text-align: center;
                margin: 0 auto;
            }
            
            tr:nth-child(odd) {
                background-color: white;
            }
            
            tr:nth-child(even) {
                background-color: gold;
            }
            
            .update {
                color: black;
                background-color: limegreen;
                text-align: center;
                margin: 0 auto;
                border: 2px solid black;
                width: 40%;
            }
            
            .error {
                color: black;
                background-color: red;
                text-align: center;
                margin: 0 auto;
                border: 2px solid black;
                width: 40%;
            }
        </style>
    </head>
    <body>
        <% 
            String command = (String)session.getAttribute("command");
            if(command == null)
                command = "SELECT * FROM suppliers";
           
            String message = (String)session.getAttribute("message");
           
            if(message == null)
                message = "";
        %>
        
        <h1>Welcome to the Spring 2019 Project 4 Enterprise System</h1>
        <h1>A Remote Database Management System</h1>
        <hr/>
        <p>You are connected to the Project 4 Enterprise Systems Database</p>
        <p>Please enter any valid SQL query or update statement</p>
        <p>If no query/update command is provided, the execute button will display all supplier information in the database.</p>
        <p>All execution results will appear below</p>
  
        <form action="/project4/executeCommand" method="POST">
            <textarea name="command"><%=command%></textarea><br><br>
            <input type="submit" value="Execute">
            <input type="button" value="Clear" onclick="clearArea()">
        </form>
        <hr>
        <p>Database Results:</p>
        <%=message%>
            
        <script>
            function clearArea() {
                document.querySelector("textarea").value = "";
            }
        </script>
    </body>
</html>