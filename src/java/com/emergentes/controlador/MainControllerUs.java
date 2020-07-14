package com.emergentes.controlador;

import com.emergentes.modelo.RegistroUsuario;
import com.emergentes.utiles.ConexionBD;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MainControllerUs", urlPatterns = {"/MainControllerUs"})
public class MainControllerUs extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op;
        op = (request.getParameter("op") != null) ? request.getParameter("op") : "list";
        ArrayList<RegistroUsuario> lista = new ArrayList<RegistroUsuario>();
        ConexionBD canal = new ConexionBD();
        Connection conn = canal.conectar();
        PreparedStatement ps;
        ResultSet rs;

        if (op.equals("list")) {
            try {
                String sql = "select * from registro";
                ps = conn.prepareStatement(sql);
                rs = ps.executeQuery();

                while (rs.next()) {
                    RegistroUsuario lib = new RegistroUsuario();
                    lib.setId(rs.getInt("id"));
                    lib.setNombre(rs.getString("nombre"));
                    lib.setApellido(rs.getString("apellido"));
                    lib.setCorreo(rs.getString("correo"));
                    lib.setPassword(rs.getString("password"));
                    lib.setCi(rs.getString("ci"));
                    lista.add(lib);
                }

                request.setAttribute("lista", lista);
                request.getRequestDispatcher("PerfilUsuario.jsp").forward(request, response);
            } catch (SQLException ex) {
                System.out.println("error en SQL " + ex.getMessage());
            } finally {
                canal.desconectar();
            }
        }
        if (op.equals("nuevo")) {
            RegistroUsuario b = new RegistroUsuario();
            request.setAttribute("nuevo", b);
            request.getRequestDispatcher("Registro.jsp").forward(request, response);

        }
        if (op.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                String sql = "delete from registro where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);
                ps.executeUpdate();
            } catch (SQLException ex) {
                System.out.println("error en SQL " + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainControllerUs");
        }
        if (op.equals("editar")) {
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                String sql = "select * from registro where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);
                rs = ps.executeQuery();
                RegistroUsuario bl = new RegistroUsuario();
                while (rs.next()) {

                    bl.setId(rs.getInt("id"));
                    bl.setNombre(rs.getString("nombre"));
                    bl.setApellido(rs.getString("apellido"));
                    bl.setCorreo(rs.getString("correo"));
                    bl.setPassword(rs.getString("password"));
                    bl.setCi(rs.getString("ci"));

                }
                request.setAttribute("nuevo", bl);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
            } catch (SQLException ex) {
                System.out.println("error en SQL " + ex.getMessage());
            }

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String ci = request.getParameter("ci");

        RegistroUsuario obj = new RegistroUsuario();
        obj.setId(id);
        obj.setNombre(nombre);
        obj.setApellido(apellido);
        obj.setCorreo(correo);
        obj.setPassword(password);
        obj.setCi(ci);

        ConexionBD canal = new ConexionBD();
        Connection conn = canal.conectar();
        PreparedStatement ps;
        ResultSet rs;
        if (id == 0) {
            try {
                String sql = "insert into registro (nombre, apellido, correo, password, ci) values (?,?,?,?,?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, obj.getNombre());
                ps.setString(2, obj.getApellido());
                ps.setString(3, obj.getCorreo());
                ps.setString(4, obj.getPassword());
                ps.setString(5, obj.getCi());
                ps.executeUpdate();
            } catch (SQLException ex) {
                System.out.println("error en SQL " + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainControllerUs");
        } // si el registr ya existe
        else {
            try {
                String sql = "update registro set nombre =?, apellido =?, correo =?, password =?, ci =? where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, obj.getNombre());
                ps.setString(2, obj.getApellido());
                ps.setString(3, obj.getCorreo());
                ps.setString(4, obj.getPassword());
                ps.setString(5, obj.getCi());
                ps.setInt(6, obj.getId());
                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("error al actualizar" + ex.getMessage());
            }
            response.sendRedirect("MainControllerUs");
        }

    }

}
