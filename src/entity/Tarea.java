package entity;

import java.util.Date;

public class Tarea {
	
	private int dni;
	private TipoTarea tipoDeTarea;
	private Date fechaCreacion;
	private Date fechaCierre;
	
	public Tarea() { //Creo es contructor por las dudas
		dni = 0;
		tipoDeTarea = null;
		fechaCreacion = null;
		fechaCierre = null;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public TipoTarea getTipoDeTarea() {
		return tipoDeTarea;
	}

	public void setTipoDeTarea(TipoTarea tipoDeTarea) {
		this.tipoDeTarea = tipoDeTarea;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaCierre() {
		return fechaCierre;
	}

	public void setFechaCierre(Date fechaCierre) {
		this.fechaCierre = fechaCierre;
	}
	
}
