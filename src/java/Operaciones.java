/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.Math;
/**
 *
 * @author Adriana Islas Estrada 5IM9
 */
public class Operaciones extends HttpServlet {

    /**
     * generado
     */
    private static final long serialVersionUID = 1583724102189855698L;
    /**
     * guarda el resultado de la operacion anterior o el número tecleado
     */
    double resultado;

    String resultado2;//Guarda la informacion del la operacion realizada
    /**
     * para guardar la operacion a realizar
     */
    String operacion;

    /**
     * Indica si estamos iniciando o no una operación
     */
    boolean nuevaOperacion = true;
    
    /**
     * Recupera valores para realizar operación
     */
    double pantalla1 = 0;
    double pantalla2 = 0;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        pantalla1 = Double.parseDouble(request.getParameter("pant1"));
        pantalla2 = Double.parseDouble(request.getParameter("pant2"));
        operacion = request.getParameter("opera");
        
        if(pantalla1 == 0){
          resultado2 = operacion + pantalla2;  
        }else{
            resultado2 = pantalla1 +operacion + pantalla2;  
        }
        
        calcularResultado();
        
        response.sendRedirect("Calculadora.jsp?resul="+resultado+"&operacion="+resultado2);
        
    }

    /**
     * Gestiona el gestiona las pulsaciones de teclas de operación
     *
     * @param tecla
     */
    

    /**
     * Calcula el resultado y lo muestra por pantalla
     */
    private void calcularResultado() {
        if (operacion.equals("+")) {
            resultado = pantalla1 + pantalla2;
        } else if (operacion.equals("-")) {
            resultado = pantalla1 - pantalla2;
        } else if (operacion.equals("/")) {
            resultado = pantalla1 / pantalla2;
        } else if (operacion.equals("*")) {
            resultado = pantalla1 * pantalla2;
        } else if (operacion.equals("cos")) {
            resultado = Math.cos(pantalla2);
            pantalla1 = 0;
        } else if (operacion.equals("sin")) {
            resultado = Math.sin(pantalla2);
            pantalla1 = 0;
        } else if (operacion.equals("tan")) {
            resultado = Math.tan(pantalla2);
            pantalla1 = 0;
        } else if (operacion.equals("atan")) {
            resultado = Math.atan(pantalla2);
            pantalla1 = 0;
        } else if (operacion.equals("acos")) {
            resultado = Math.acos(pantalla2);
            pantalla1 = 0;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}