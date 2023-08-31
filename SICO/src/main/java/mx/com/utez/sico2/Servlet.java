package mx.com.utez.sico2;

import mx.com.utez.sico2.encuestas.BeanEncuesta;
import mx.com.utez.sico2.encuestas.DaoEncuesta;

import java.io.*;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Servlet", urlPatterns = {
        "/principal",
        "/guardar-encuesta",
        "/obtener-encuesta"
})
public class Servlet extends HttpServlet {
    String url = "/principal";
    String accion;
    MetodosResultAction metodos = new MetodosResultAction();
    public static int numeroEncuestas;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        accion = request.getServletPath();
        switch (accion){
            case "/principal":
                List<BeanEncuesta> encuestas = metodos.obtenerEncuestas();
                numeroEncuestas = encuestas.size();
                request.setAttribute("encuestas", encuestas);
                //enviar al menu principal
                url = "/index.jsp";
                break;
            case "/obtener-encuesta":
                List<BeanEncuesta> encuestas2 = metodos.obtenerEncuestas();
                numeroEncuestas = encuestas2.size();
                request.setAttribute("encuestas", encuestas2);
                String id = request.getParameter("id");
                id = (id == null) ? "0" : id;
                BeanEncuesta encuesta = metodos.obtenerEncuesta(Integer.parseInt(id));
                request.setAttribute("encuesta", encuesta);
                url = "/index.jsp";
                break;
            default:
                url = "/index.jsp";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        accion = request.getServletPath();
        switch(accion){
            case "/guardar-encuesta":
                if(request.getParameter("id") != "") {
                    int id = Integer.parseInt(request.getParameter("id"));
                    String cliente = request.getParameter("cliente");
                    String institucion = request.getParameter("institucion");
                    DaoEncuesta.porcentajeGeneral = Double.parseDouble((request.getParameter("porcentaje") == null) ? "0" : request.getParameter("porcentaje"));
                    ResultadoAccion resultado = metodos.guardarEncuesta(id, cliente, institucion, DaoEncuesta.porcentajeGeneral);
                    //se usa el metodo para guardar
                    url = "/principal?result=" +
                            resultado.isResultado() + "&message=" + resultado.getMensaje()
                            + "&status=" + resultado.getEstado();
                } else {
                    url = "/principal?ERROR_encuesta_NO_seleccionada";
                }
                break;
            default:
                url = "/principal";
        }
        response.sendRedirect(request.getContextPath() + url);
    }
}