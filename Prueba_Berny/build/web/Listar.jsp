<%@page import="model.Automovil"%>
<%@page import="java.util.List"%>
<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <br><br><br>
        <div class="container" style="padding-left:200px">
            <div class="panel panel-primary">

                <div class="panel-heading">
                    <span class="panel-title">
                        <h1>Buscador</h1>
                    </span>
                </div>
                <br>
                <form>
                    <label for="7">Ingrese Patente a buscar: </label>
                    <input type="text" name="buscarPatente" class="form-control" id="7" placeholder="Patente..." required style="width: 550px">
                    <button type="submit" class="btn btn-outline-success" style="margin-left: 600px; margin-top: -68px; width: 324px">Buscar</button>
                </form>

                <%
                    String buscador = request.getParameter("buscarPatente");

                    Data d = new Data();
                    List<Automovil> lista = d.buscarAutito(buscador);
              %>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Patente</th>
                            <th scope="col">Marca</th>
                            <th scope="col">Año</th>
                            <th scope="col">Detalles</th>
                            <th scope="col">Rut</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Telefono</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (Automovil a : lista) {

                                if (lista != null) {%>
                        <tr>
                            <td><%=a.getId()%></td>
                            <td><%=a.getPatente()%></td>
                            <td><%=a.getMarca()%></td>
                            <td><%=a.getAnio()%></td>
                            <td style="color: red;font-weight:bold"><%=a.getDetalles()%></td>
                            <td><%=a.getRut()%></td>
                            <td style="color: red;font-weight:bold"><%=a.getNombre()%></td>
                            <td style="color: red;font-weight:bold"><%=a.getTelefono()%></td>
                            <%}
                                  if (lista == null) {
                                  out.print("No se encontraron resultados(Tonto bootstrap, tonto todo)");
                                }
                             %>
    
                    </tr>
                    <%}%>
                    </tbody>
                </table>

                <form action="index.jsp">
                    <button type="submit" class="btn btn-outline-info" style="width: 400px; margin-left: 250px">Volver</button>
                </form>     
                <br><br><br>
            </div>
        </div>
    </body>
</html>
