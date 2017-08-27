package practica1;  

public class ClaseGym {
    
    private int id;
    private String profesor;
    private String nombre;
    private static enum dias {LUNES, MARTES, MIERCOLES, JUEVES, VIERNES, SABADO, DOMINGO; }; 
    private int horarioInicio;
    private int horarioFin;

    public ClaseGym(int id, String profesor, String nombre, int horarioInicio, int horarioFin) {
        this.id = id;
        this.profesor = profesor;
        this.nombre = nombre;
        this.horarioInicio = horarioInicio;
        this.horarioFin = horarioFin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProfesor() {
        return profesor;
    }

    public void setProfesor(String profesor) {
        this.profesor = profesor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getHorarioInicio() {
        return horarioInicio;
    }

    public void setHorarioInicio(int horarioInicio) {
        this.horarioInicio = horarioInicio;
    }

    public int getHorarioFin() {
        return horarioFin;
    }

    public void setHorarioFin(int horarioFin) {
        this.horarioFin = horarioFin;
    }

    @Override
    public String toString() {
        return "ClaseGym{" + "id=" + id + ", profesor=" + profesor + ", nombre=" + nombre + ", horarioInicio=" + horarioInicio + ", horarioFin=" + horarioFin + '}';
    }
    
 
}
