/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.controlador;

import com.emergentes.modelo.RgAnuncios;
import com.emergentes.utiles.ConexionBD;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author usuario
 */
@WebServlet(name = "ControladorAnuncio", urlPatterns = {"/ControladorAnuncio"})
@MultipartConfig
public class ControladorAnuncio extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               String op;
        op = (request.getParameter("op") != null) ? request.getParameter("op") : "list";
        ArrayList<RgAnuncios> lista = new ArrayList<RgAnuncios>();

        ConexionBD canal = new ConexionBD();
        Connection conn = canal.conectar();

        PreparedStatement ps;
        ResultSet rs;
        
         if (op.equals("list")) {
            //recupera informacion de la base de datos
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                String sql = "select * from anuncio where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);
                rs = ps.executeQuery();

                while (rs.next()) {
                    //id, isbn, titulo, Categoria son nombres de la BD
                    RgAnuncios lib = new RgAnuncios();
                    lib.setId(rs.getInt("id"));
                    lib.setImagen(rs.getBinaryStream("imagen"));
                    lib.setTitulo(rs.getString("titulo"));
                    lib.setPrecio(rs.getString("precio"));
                    lib.setCategoriaBD(rs.getString("categoria"));
                    lib.setEstadoBD(rs.getString("estado"));
                    lib.setDepartamentoBD(rs.getString("departamento"));
                    lib.setDescripcion(rs.getString("descripcion"));
                    lib.setFecha(rs.getString("fecha"));
                    lib.setTelefono(rs.getInt("telefono"));
                    lista.add(lib);
                }
                request.setAttribute("Anunc", lista);
               /* request.getRequestDispatcher("index.jsp").forward(request, response);*/
                
                request.getRequestDispatcher("Anuncio.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
        }

       if (op.equals("verAnuncio")) {
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                String sql = "select * from anuncio where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);
                rs = ps.executeQuery();

                RgAnuncios li = new RgAnuncios();

                while (rs.next()) {

                    li.setId(rs.getInt("id"));
                    li.setImagen(rs.getBinaryStream("imagen"));
                    li.setTitulo(rs.getString("titulo"));
                    li.setPrecio(rs.getString("precio"));
                    li.setCategoriaBD(rs.getString("categoria"));
                    li.setEstadoBD(rs.getString("estado"));
                    li.setDepartamentoBD(rs.getString("departamento"));
                    li.setDescripcion(rs.getString("descripcion"));
                    li.setFecha(rs.getString("fecha"));
                    li.setTelefono(rs.getInt("telefono"));
                    

                }
                request.setAttribute("Anunc", li);
                request.getRequestDispatcher("Anuncio.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            }

        }

    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int id = Integer.parseInt(request.getParameter("id"));
        Part imagen = request.getPart("imagen");
        InputStream img = imagen.getInputStream();
        String titulo = request.getParameter("titulo");
        String precio = request.getParameter("precio");
        String categoriaBD = request.getParameter("categoriaBD");
        String[] categoriains = request.getParameterValues("categoria");
        String estadoBD = request.getParameter("estadoBD");
        String[] estadoins = request.getParameterValues("estado");
        String departamentoBD = request.getParameter("departamentoBD");
        String[] departamentoins = request.getParameterValues("departamento");
        String descrip = request.getParameter("descripcion");
        String fecha = request.getParameter("fecha");
        int telef = Integer.parseInt(request.getParameter("telefono"));
        
        RgAnuncios l = new RgAnuncios();
        l.setId(id);
        l.setImagen(img);
        l.setTitulo(titulo);
        l.setPrecio(precio);
        l.setCategoriaBD(categoriaBD);
        l.setCategoriaIns(categoriains);
        l.setEstadoBD(estadoBD);
        l.setEstadoIns(estadoins);
        l.setDepartamentoBD(departamentoBD);
        l.setDepartamentoIns(departamentoins);
        l.setDescripcion(descrip);
        l.setFecha(fecha);
         l.setTelefono(telef);
    }

}
