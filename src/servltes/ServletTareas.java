package servltes;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.TareasControl;
import controlImpl.TareasControlImpl;
import entity.Tarea;


@WebServlet("/ServletTareas")
public class ServletTareas extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TareasControl cTareas = new TareasControlImpl();
       

    public ServletTareas() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Se cargan la lista de tareas con este metodo que llama a Control (Negocio)
		cargarTareas(request);
		
		RequestDispatcher rd = request.getRequestDispatcher("Tareas.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cargarTareas(request);
		
		RequestDispatcher rd = request.getRequestDispatcher("Tareas.jsp");
		rd.forward(request, response);
	}
	
	public void cargarTareas(HttpServletRequest request) {
		ArrayList<Tarea> listaTareas = cTareas.listaDeTareas();
		request.setAttribute("listaTareas", listaTareas);
	}

}
