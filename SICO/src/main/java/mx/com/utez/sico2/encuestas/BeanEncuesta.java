package mx.com.utez.sico2.encuestas;

public class BeanEncuesta {
    //calificaciones de cada caracteristica: mala = 1, regular = 2, buena = 3, muy buena = 4, excelente = 5
    int id;
    String nombreEncuesta;
    String cliente;
    String institucion;
    double porcentaje = 0;

    public BeanEncuesta(int id, String cliente, String institucion, double porcentaje) {
        this.id = id;
        this.cliente = cliente;
        this.institucion = institucion;
        this.porcentaje = porcentaje;
    }

    public BeanEncuesta() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }

    public String getNombreEncuesta() {
        return nombreEncuesta;
    }

    public void setNombreEncuesta(String nombreEncuesta) {
        this.nombreEncuesta = nombreEncuesta;
    }
}
