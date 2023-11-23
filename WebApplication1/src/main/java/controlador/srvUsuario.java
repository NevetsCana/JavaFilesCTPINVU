//Este es el servlet que procesa la información y se verifica el usuario
package controlador;

import modelo.DAOUSUARIO;
import modelo.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author User
 */
@WebServlet(name = "srvUsuario", urlPatterns = {"/srvUsuario"})
public class srvUsuario extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        
        try {
            if (accion != null) {
                switch (accion) {
                    case "verificar":
                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                    default:
                        response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {
            System.out.println(e.toString());
            this.getServletConfig().getServletContext().getRequestDispatcher("/mensaje.jsp").forward(request, response);

        }
    }

    private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            
            
        //response.sendRedirect("Mensaje.jsp");
        HttpSession sesion;
        DAOUSUARIO dao;
        Usuario usuario;
        
        usuario = this.obtenerUsuario(request);
        dao = new DAOUSUARIO();
        usuario = dao.identificar(usuario);
            
        if (usuario != null && usuario.getCargo().getNombre_Cargo().equals("Administrador")) {
            sesion = request.getSession();
            sesion.setAttribute("Administrador", usuario);
            request.setAttribute("msje", "Bienvenido");
            this.getServletConfig().getServletContext().getRequestDispatcher("/InicioAdmin.jsp").forward(request, response);
        } else if (usuario != null && usuario.getCargo().getNombre_Cargo().equals("Usuario")) {
            sesion = request.getSession();
            sesion.setAttribute("Usuario", usuario);
            this.getServletConfig().getServletContext().getRequestDispatcher("/inicioUser.jsp").forward(request, response);
        } else {
            request.setAttribute("msje", "Credenciales Incorectas");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }  
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        
    }

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        HttpSession sesion = request.getSession();
//        sesion.setAttribute("usuario", null);
//        sesion.invalidate();
//        response.sendRedirect("index.jsp");
    }

    private Usuario obtenerUsuario(HttpServletRequest request) {
        Usuario u = new Usuario();
        u.setNombre(request.getParameter("txtUsu"));
        u.setClave(request.getParameter("txtPass"));
        return u;
    }
}
