/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.datos;

import Modelo.entidad.Evento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author TOBBY
 */
public class DatosEvento {
    
    private Connection miConexion;
    private String mensaje;
    private ResultSet rs;
    private PreparedStatement ps;

    public DatosEvento() {
        miConexion = Conexion.getConexion();
        
    }

    public String getMensaje() {
        return mensaje;
    }
    public boolean agregarEvento(Evento unEvento){
         boolean agregado = false;
         this.mensaje = null;
         String consulta = "insert into evento values (null,?,?,?,?)";
         try{
             
             //agregar Evento
             
             ps = miConexion.prepareStatement(consulta);
             ps.setString(1, unEvento.getNombre());
             ps.setString(2, unEvento.getFecha());
             ps.setString(3, unEvento.getDescripcion());
             ps.setString(4, unEvento.getLugar());                  
         //    ps.executeUpdate();
               if(ps.executeUpdate()>0){
                agregado = true;
             }  
           ps.close();
             
         }catch(SQLException ex){           
                 this.mensaje = ex.getMessage();             
         }
        return agregado;

    }
   
}


