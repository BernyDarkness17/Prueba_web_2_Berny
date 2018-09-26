package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Data {

    private final Conexion con;
    private ResultSet rs;

    public Data() throws SQLException, ClassNotFoundException {
        con = new Conexion(
                "localhost",
                "registro_Automovil",
                "root",
                ""
        );
    }

    public void crear(Automovil a) throws SQLException {
        con.ejecutar("INSERT INTO automovil VALUES(NULL, "
                + "'" + a.getPatente() + "', "
                + "'" + a.getMarca() + "', "
                + "" + a.getAnio() + ", "
                + "'" + a.getDetalles() + "', "
                + "'" + a.getRut() + "', "
                + "'" + a.getNombre() + "', "
                + "'" + a.getTelefono() + "');");
    }

    public List<Automovil> buscarAutito(String filtro) throws SQLException {
        List<Automovil> lista = new ArrayList<>();

        rs = con.ejecutarSelect("SELECT * FROM automovil WHERE patente like '%" + filtro + "%';");
        Automovil autito;

        while (rs.next()) {
            autito = new Automovil();

            autito.setId(rs.getInt(1));
            autito.setPatente(rs.getString(2));
            autito.setMarca(rs.getString(3));
            autito.setAnio(rs.getInt(4));
            autito.setDetalles(rs.getString(5));
            autito.setRut(rs.getString(6));
            autito.setNombre(rs.getString(7));
            autito.setTelefono(rs.getString(8));

            lista.add(autito);
        }
        con.close();
        return lista;
    }

    public int ContarCantidadRegistros() throws SQLException {
        int conta = 0;
        rs = con.ejecutarSelect("SELECT COUNT(*) FROM automovil;");

        if (rs.next()) {
            conta = rs.getInt(1);
        }
        System.out.println("Contador" + conta);

        return conta;
    }

}
