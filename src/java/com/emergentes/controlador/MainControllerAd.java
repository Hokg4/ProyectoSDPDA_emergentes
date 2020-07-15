package com.emergentes.controlador;


import com.emergentes.modelo.RgAnuncios;
import com.emergentes.utiles.ConexionBD;
import java.io.IOException;
import java.io.InputStream;
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

@WebServlet(name = "MainControllerAd", urlPatterns = {"/MainControllerAd"})
@MultipartConfig
public class MainControllerAd extends HttpServlet {

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
                String sql = "select * from anuncio";
                ps = conn.prepareStatement(sql);
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
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("Administrador.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
        }

        if (op.equals("nuevo")) {
            RgAnuncios l = new RgAnuncios();
            request.setAttribute("Nue", l);
            request.getRequestDispatcher("nuevo.jsp").forward(request, response);
        }
        if (op.equals("editar")) {
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
                request.setAttribute("Edit", li);
                request.getRequestDispatcher("editar.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            }

        }

        if (op.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));

            try {
                String sql = "delete from anuncio where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);
                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainController");

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

        ConexionBD canal = new ConexionBD();
        Connection conn = canal.conectar();
        PreparedStatement ps;
        ResultSet rs;

        if (id == 0) {
            try {
                String sql = "insert into anuncio (imagen,titulo,precio,categoria,estado,departamento,descripcion,fecha,telefono) values (?,?,?,?,?,?,?,?,?)";
                ps = conn.prepareStatement(sql);
                ps.setBlob(1, l.getImagen());
                ps.setString(2, l.getTitulo());
                ps.setString(3, l.getPrecio());

                String[] Cate = l.getCategoriaIns();
                if (Cate != null) {
                    for (int i = 0; i < Cate.length; i++) {
                         ps.setString(4, Cate[i]) ;

                    }   
                }
                String[] Est = l.getEstadoIns();
                if (Est != null){
                    for (int i = 0; i < Est.length; i++){
                        ps.setString(5, Est[i]);
                    }
                }
                String[] Dep = l.getDepartamentoIns();
                if (Dep != null) {
                    for (int i = 0; i < Dep.length; i++) {
                         ps.setString(6, Dep[i]) ;

                    }   
                }
                ps.setString(7, l.getDescripcion());
                ps.setString(8, l.getFecha());
                ps.setInt(9, l.getTelefono());
               /* cat = String.valueOf(Cate);
                ps.setString(3, cat);*/
                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            } finally {
                canal.desconectar();
            }

            response.sendRedirect("MainController");

        } else {

            try {
                String sql = "update anuncio set imagen=?,titulo=?,precio=?,categoria=?,estado=?,departamento=?,descripcion=?,fecha=?,telefono=? where id=?";
                                                
                ps = conn.prepareStatement(sql);
                ps.setBlob(1, l.getImagen());
                ps.setString(2, l.getTitulo());
                ps.setString(3, l.getPrecio());
                ps.setString(4, l.getCategoriaBD());
                ps.setString(5, l.getEstadoBD());
                ps.setString(6, l.getDepartamentoBD());
                ps.setString(7, l.getDescripcion());
                ps.setString(8, l.getFecha());
                ps.setInt(9, l.getTelefono());
                ps.setInt(10, l.getId());
                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error al actualizar" + ex.getMessage());

            }
            response.sendRedirect("MainController");
        }
    }
}
