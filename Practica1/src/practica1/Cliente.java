package practica1;

public class Cliente {
    
    private static int idGeneral = 0;

    private String nombre;
    private int id;
    private String direccion;
    private int telefono;

    public Cliente(String nombre, String direccion, int telefono) {
        this.nombre = nombre;
        this.id = idGeneral++;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Cliente{" + "nombre=" + nombre + ", id=" + id + ", direccion=" + direccion + ", telefono=" + telefono + '}';
    }
    
}
