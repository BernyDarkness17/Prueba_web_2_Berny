<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <title>Registros☺</title>
    </head>
    <body>
        <div class="container" style="padding-left:  350px">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <span class="panel-title">
                        <h1>Registros</h1>
                    </span>
                    <span id="resultado"></span>
                </div>
                <form action="registrarAutomovil.do" method="post">
                    <div class="form-group">
                        <label for="1">Patente :</label>
                        <input type="text" name="patente" class="form-control" id="1" placeholder="Patente: " required style="width: 550px">
                    </div>

                    <div class="form-group">
                        <label for="2">Marca :</label>
                        <input type="text" name="marca" class="form-control" id="2" placeholder="Marca: " required style="width: 550px">
                    </div>

                    <div class="form-group">
                        <label for="3">Año :</label>
                        <input type="text" name="anio" placeholder="Año: " required class="form-control" id="3" style="width: 550px">
                    </div>

                    <div class="form-group">
                        <label for="4">Detalles :</label>
                        <input type="text" name="detalles" class="form-control" id="4" placeholder="Detalles: " required style="width: 550px">
                    </div>

                    <div class="form-group">
                        <label for="5">Rut :</label>
                        <input type="text" name="rut" class="form-control" id="5" placeholder="Rut del Dueño:  " required style="width: 550px">
                    </div>

                    <div class="form-group">
                        <label for="6">Nombre Dueño :</label>
                        <input type="text" name="nombreDuenio" class="form-control" id="6" placeholder="Nombre del dueño:  " required style="width: 550px">
                    </div>

                    <div class="form-group">
                        <label for="7">Telefono :</label>
                        <input type="text" name="telefono" class="form-control" id="7" placeholder="+569..  " required style="width: 550px">
                    </div>

                    <button type="submit" class="btn btn-outline-success" style="width: 400px; margin-left: 90px">Registrar</button>
                    <br><br>
                </form>
                <form action="index.jsp">
                    <button type="submit" class="btn btn-outline-info" style="width: 400px; margin-left: 90px">Volver</button>
                </form>     
                <br><br><br>
            </div>
        </div>
    </body>
</html>
