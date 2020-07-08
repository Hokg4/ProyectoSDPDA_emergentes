/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.modelo;

import java.io.InputStream;

/**
 *
 * @author usuario
 */
public class RgAnuncios {

    private int id;
    private InputStream imagen;
    private String titulo;
    private String precio;
    private String CategoriaBD;
    private String[] CategoriaIns;
    private String EstadoBD;
    private String[] EstadoIns;
    private String DepartamentoBD;
    private String[] DepartamentoIns;
    private String descripcion;
    private String fecha;
    private int telefono;

   /* public RgAnuncios() {
        this.id = 0;
        this.titulo = "";
        this.precio = "";
        this.CategoriaBD = "";
        this.EstadoBD = "";
        this.DepartamentoBD = "";
        this.descripcion = "";
        this.fecha = "";
    }*/

    public RgAnuncios() {
        
    }

    public RgAnuncios(int id, InputStream imagen, String titulo, String precio, String CategoriaBD, String EstadoBD, String DepartamentoBD, String descripcion, String fecha, int telefono) {
        this.id = id;
        this.imagen = imagen;
        this.titulo = titulo;
        this.precio = precio;
        this.CategoriaBD = CategoriaBD;
        this.EstadoBD = EstadoBD;
        this.DepartamentoBD = DepartamentoBD;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.telefono = telefono;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
        this.imagen = imagen;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getCategoriaBD() {
        return CategoriaBD;
    }

    public void setCategoriaBD(String CategoriaBD) {
        this.CategoriaBD = CategoriaBD;
    }

    public String[] getCategoriaIns() {
        return CategoriaIns;
    }

    public void setCategoriaIns(String[] CategoriaIns) {
        this.CategoriaIns = CategoriaIns;
    }

    public String getEstadoBD() {
        return EstadoBD;
    }

    public void setEstadoBD(String EstadoBD) {
        this.EstadoBD = EstadoBD;
    }

    public String[] getEstadoIns() {
        return EstadoIns;
    }

    public void setEstadoIns(String[] EstadoIns) {
        this.EstadoIns = EstadoIns;
    }

    public String getDepartamentoBD() {
        return DepartamentoBD;
    }

    public void setDepartamentoBD(String DepartamentoBD) {
        this.DepartamentoBD = DepartamentoBD;
    }

    public String[] getDepartamentoIns() {
        return DepartamentoIns;
    }

    public void setDepartamentoIns(String[] DepartamentoIns) {
        this.DepartamentoIns = DepartamentoIns;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

}
