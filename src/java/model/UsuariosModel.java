/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jacqu
 */
public class UsuariosModel {
    protected int Id;
    protected String Nombre;
    protected String Usr;
    protected String Pwd;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getUsr() {
        return Usr;
    }

    public void setUsr(String Usr) {
        this.Usr = Usr;
    }

    public String getPwd() {
        return Pwd;
    }

    public void setPwd(String Pwd) {
        this.Pwd = Pwd;
    }

    public UsuariosModel(int Id, String Nombre, String Usr, String Pwd) {
        this.Id = Id;
        this.Nombre = Nombre;
        this.Usr = Usr;
        this.Pwd = Pwd;
    }

    public UsuariosModel() {
    }
    
}
