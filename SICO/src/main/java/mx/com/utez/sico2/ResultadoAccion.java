package mx.com.utez.sico2;

public class ResultadoAccion<T> {
    T objeto;
    private String mensaje;
    private String estado;
    public boolean resultado;

    public ResultadoAccion(){
    }

    public ResultadoAccion(T objeto) {this.objeto=objeto;}
    public T getObjeto() {return objeto;}
    public void setObjeto(T obj) {this.objeto=objeto;}
    public String getMensaje() {return mensaje;}
    public void setMensaje(String mensaje) {this.mensaje = mensaje;}
    public String getEstado() {return estado;}
    public  void setEstado(String estado) {this.estado = estado;}
    public boolean isResultado() {return resultado;}
    public void setResultado(boolean resultado) {this.resultado=resultado;}
}
