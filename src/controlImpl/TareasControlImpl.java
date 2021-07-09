package controlImpl;

import java.util.ArrayList;
import control.TareasControl;
import dao.TareasDao;
import daoImpl.TareasDaoImpl;
import entity.Tarea;

public class TareasControlImpl implements TareasControl{
	//TODO: Aca puedo hacer algunas validaciones
	@Override
	public ArrayList<Tarea> listaDeTareas() {
		TareasDao dTarea = new TareasDaoImpl();
		ArrayList<Tarea> listaTarea = dTarea.listaDeTareas();
		return listaTarea;
	}

}
