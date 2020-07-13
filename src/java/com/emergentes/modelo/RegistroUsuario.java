package com.emergentes.modelo;


public class RegistroUsuario {
    private int id;
    private String nombre;
    private String apellido;
    private String correo;
    private String password;
    private String ci;

    public RegistroUsuario() {
        this.id = 0;
        this.nombre = "";
        this.apellido = "";
        this.correo = "";
        this.password = "";
        this.ci = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCi() {
        return ci;
    }

    public void setCi(String ci) {
        this.ci = ci;
    }
    
   
}
