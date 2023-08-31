package mx.com.utez.sico2.encuestas;
import mx.com.utez.sico2.utils.Conexion;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoEncuesta {
    Connection con;
    PreparedStatement pstm;
    CallableStatement cstm;
    ResultSet rs;

    public static double porcentajeGeneral = 0;

    public void obtenerPorcentaje(Connection con){
        try {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM datos");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                porcentajeGeneral = rs.getDouble("porcentaje");
            }
        }catch(SQLException e){
            System.err.println("Ocurrió un error en la consulta " + e);
        }
    }

    public List<BeanEncuesta> findAll() {
        List<BeanEncuesta> encuestas = new LinkedList<>();
        BeanEncuesta encuesta = null;

        try {
            this.con = (new Conexion()).getConnection();
            String query = "SELECT * FROM encuesta;";
            this.pstm = this.con.prepareStatement(query);
            this.rs = this.pstm.executeQuery();
            obtenerPorcentaje(con);

            while(this.rs.next()) {
                encuesta = new BeanEncuesta();
                encuesta.setId((int) this.rs.getLong("id_encuesta"));
                encuesta.setNombreEncuesta(rs.getString("nombre_encuesta"));
                encuesta.setInstitucion(this.rs.getString("nombre_escuela"));
                encuesta.setCliente(this.rs.getString("nombre_cliente"));
                encuesta.setPorcentaje(porcentajeGeneral);
                encuestas.add(encuesta);
            }
        } catch (SQLException var7) {
            Logger.getLogger(DaoEncuesta.class.getName()).log(Level.SEVERE, "Error findAll", var7);
        } finally {
            this.closeConnections();
        }

        return encuestas;
    }

    public BeanEncuesta find(int id) {
        BeanEncuesta encuesta = new BeanEncuesta();;
        try {
            this.con = (new Conexion()).getConnection();
            String query = "SELECT * FROM encuesta WHERE id_encuesta="+id;
            this.pstm = this.con.prepareStatement(query);
            this.rs = this.pstm.executeQuery();
            obtenerPorcentaje(con);

            while(this.rs.next()) {
                encuesta.setId((int) this.rs.getLong("id_encuesta"));
                encuesta.setNombreEncuesta(rs.getString("nombre_encuesta"));
                encuesta.setInstitucion(this.rs.getString("nombre_escuela"));
                encuesta.setCliente(this.rs.getString("nombre_cliente"));
                encuesta.setPorcentaje(porcentajeGeneral);
            }
        } catch (SQLException var7) {
            Logger.getLogger(DaoEncuesta.class.getName()).log(Level.SEVERE, "Error findAll", var7);
        } finally {
            this.closeConnections();
        }

        return encuesta;
    }

    public boolean save(BeanEncuesta encuesta) {
        boolean var3, resul, resul2;
        try {
            this.con = (new Conexion()).getConnection();
            String query = "update encuesta set nombre_cliente=?, nombre_escuela=? WHERE id_encuesta=?";
            pstm = con.prepareStatement(query);
            pstm.setString(1, encuesta.getCliente());
            pstm.setString(2, encuesta.getInstitucion());
            pstm.setInt(3, encuesta.getId());
            resul = pstm.executeUpdate() == 1;
            pstm = con.prepareStatement("update datos set porcentaje=?");
            pstm.setDouble(1, porcentajeGeneral);
            resul2 = pstm.executeUpdate() == 1;
            return resul && resul2;
        } catch (SQLException var7) {
            Logger.getLogger(DaoEncuesta.class.getName()).log(Level.SEVERE, "Error save", var7);
            var3 = false;
        } finally {
            this.closeConnections();
        }

        return var3;
    }

    public void closeConnections(){
        try {
            if (con != null) {
                con.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (cstm != null) {
                cstm.close();
            }
            if(rs != null) {
                rs.close();
            }
        } catch (SQLException e){

        }
    }
}
