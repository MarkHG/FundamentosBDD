package practica1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Gym {
    
    public static void crearCliente(String archivo) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa el nombre del nuevo cliente");
        String nombre = entrada.nextLine();
        System.out.println("Ingresa la dirección");
        String direccion = entrada.nextLine();
        System.out.println("Ingrese el telefono");
        int telefono = entrada.nextInt();
        
        Cliente nuevo = new Cliente(nombre, direccion, telefono); 
 
        try {
            BufferedWriter out = new BufferedWriter(new FileWriter(new File(archivo)));
            if (buscarCliente() != null)
                out.write(nuevo.toString());
            else
                System.out.println("El cliente ya existe!");
        } catch(IOException io) {
            System.out.println("No pudo guardar el cliente");
        }
    }
    
    public static void  creaClasesaImpartir() {
    
    }
    
    public static void actualizarCliente() {
    
    }
    
    public static void actualizarClaseaImpartir() {
    
    }
    
    public static ClaseGym eliminarCliente() {
    
    }
    
    public static ClaseGym eliminarClase() {
    
    }
    
    public static Cliente buscarCliente() {
    
    }
    
    public static ClaseGym buscarClase() {
    
    }
    
    
}
