package controlImpl;

import java.util.ArrayList;

import control.Tareas;
import dao.TareasDao;
import daoImpl.TareasDaoImpl;
import entity.Tarea;

public class TareasControlImpl implements Tareas{
	//TODO: Aca puedo hacer algunas validaciones
	@Override
	public ArrayList<Tarea> listaDeTareas() {
		TareasDao dTarea = new TareasDaoImpl();
		ArrayList<Tarea> listaTarea = dTarea.listaDeTareas();
		return listaTarea;
	}

}
