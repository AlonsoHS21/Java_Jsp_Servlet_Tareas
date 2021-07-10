package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.TareasDao;
import entity.Tarea;
import entity.TipoTarea;

public class TareasDaoImpl implements TareasDao{
	
	private static final String traerListaDeTareas = "Select * From tareas t inner join tiposDeTareas tt on t.idTipoTarea = tt.idTipoTarea";

	@Override
	public ArrayList<Tarea> listaDeTareas() {
		PreparedStatement ps;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		ResultSet rs;
		ArrayList<Tarea> listaTareas = new ArrayList<Tarea>();
		try {
			ps = conexion.prepareStatement(traerListaDeTareas);
			rs = ps.executeQuery();
			while(rs.next()) {
				Tarea tarea = new Tarea();
				tarea.setDni(rs.getInt("t.dni"));
				tarea.setFechaCreacion(rs.getDate("t.fechaCreacion"));
				tarea.setFechaCierre(rs.getDate("t.fechaCierre"));
				tarea.setDescripcion(rs.getString("t.descripcion"));
				TipoTarea tipoDeTarea = new TipoTarea();
				tipoDeTarea.setNombre(rs.getString("tt.nombre"));
				tarea.setTipoDeTarea(tipoDeTarea);
				listaTareas.add(tarea);
			}
			
		}
		catch(SQLException e) {
			e.printStackTrace();
			new ArrayList<Tarea>(); //Lo que se llego a llenar con datos lo vacio de nuevo
		}
		return listaTareas; //La devuelve vacio
	}

}
