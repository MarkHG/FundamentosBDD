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
    
    public static void  creaClasesaImpartir(String archivo) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese el id  de la clase");
        int id = entrada.nextInt();
        System.out.println("Ingrese el profesor");
        String profesor = entrada.nextLine();
        System.out.println("Ingrese el nombre");
        String nombre = entrada.nextLine();
        System.out.println("Ingrese el horario de Inicio");
        int horarioInicio = entrada.nextInt();
        System.out.println("Ingrese el horario final");
        int horarioFin = entrada.nextInt();
        
        ClaseGym nuevo = new ClaseGym(id, profesor, nombre, horarioInicio, horarioFin);
         
        try {
            BufferedWriter out = new BufferedWriter(new FileWriter(new File(archivo)));
            if (buscarClase() != null)
                out.write(nuevo.toString());
            else
                System.out.println("La clase ya existe");
            

        }catch(IOException io) {
            System.out.println("No pudo guardar clase");
        }
        
       
        
    
    }
    
    public static void actualizarCliente(String archivo) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Escribe el nombre");
        String nombre = entrada.nextLine();
        System.out.println("Escribe la dirección");
        String direccion = entrada.nextLine();
        System.out.println("Escribe el telefono");
        int telefono = entrada.nextInt();
        
        Cliente nuevo = new Cliente(nombre, direccion, telefono); 
        
  
        
    
    }
    
    public static void actualizarClaseaImpartir() {
    
    }
    
    public static ClaseGym eliminarCliente(String archivo) {
      
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa el nombre del nuevo cliente");
        String nombre = entrada.nextLine();
        System.out.println("Ingresa la dirección");
        String direccion = entrada.nextLine();
        System.out.println("Ingrese el telefono");
        int telefono = entrada.nextInt();
        
        
        File fichero = new File(archivo);
        if (fichero.delete())
         System.out.println("El fichero ha sido borrado satisfactoriamente");
       else
         System.out.println("El fichero no puede ser borrado");
    
      
    }
    
    public static ClaseGym eliminarClase(String archivo) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese el id  de la clase");
        int id = entrada.nextInt();
        System.out.println("Ingrese el profesor");
        String profesor = entrada.nextLine();
        System.out.println("Ingrese el nombre");
        String nombre = entrada.nextLine();
        System.out.println("Ingrese el horario de Inicio");
        int horarioInicio = entrada.nextInt();
        System.out.println("Ingrese el horario final");
        int horarioFin = entrada.nextInt();
        
        File fichero = new File(archivo);
        if (fichero.delete())
         System.out.println("El fichero ha sido borrado satisfactoriamente");
       else
         System.out.println("El fichero no puede ser borrado");
        
        
    }
    
    public static Cliente buscarCliente() {
    
    }
    
    public static ClaseGym buscarClase() {
    
    }
    
    
}
