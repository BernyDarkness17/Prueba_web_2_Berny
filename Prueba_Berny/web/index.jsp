<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Data d = new Data();
            int cont = d.ContarCantidadRegistros();
        %>
    <center>
        <br>
        <br>
        <br>

        <div class="container">
            <h1>Bienvenido</h1>
            <br>
            <form action="Registrar.jsp">
                <button type="submit" class="btn btn-outline-info" style="width: 200px">Ir a registrar</button>
            </form>
            <br>
            <form action="Listar.jsp">
                <button type="submit" class="btn btn-outline-info" style="width: 200px">Ir a listar</button>
            </form>

            <br><br>
            <div class="alert alert-primary" role="alert">
                Cantidad de autos registrados: <%=cont%>
            </div>

        </div>
    </center>
</body>
</html>
