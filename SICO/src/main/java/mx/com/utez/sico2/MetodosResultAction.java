package mx.com.utez.sico2;

import mx.com.utez.sico2.encuestas.BeanEncuesta;
import mx.com.utez.sico2.encuestas.DaoEncuesta;

import java.util.List;

public class MetodosResultAction {
    DaoEncuesta daoEncuesta = new DaoEncuesta();

    public List<BeanEncuesta> obtenerEncuestas(){
        return daoEncuesta.findAll();
    }
    public BeanEncuesta obtenerEncuesta(int id){
        return daoEncuesta.find(id);
    }

    public ResultadoAccion guardarEncuesta(int idEncuesta, String cliente, String institucion, double porcentaje){
        ResultadoAccion accion = new ResultadoAccion();
        BeanEncuesta encuesta = new BeanEncuesta(idEncuesta, cliente, institucion, porcentaje);
        if (daoEncuesta.save(encuesta)){
            accion.setResultado(true);
            accion.setMensaje("Encuesta guardada correctamente");
            accion.setEstado("exitoso");
        } else {
            accion.setResultado(false);
            accion.setMensaje("Encuesta no guardada");
            accion.setEstado("fallido");
        }
        return accion;
    }
}
