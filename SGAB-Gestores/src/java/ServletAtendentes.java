/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.joao.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author adria
 */
@WebServlet(name = "ServletTest", urlPatterns = {"/ServletTest"})
public class ServletAtendentes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String adminpsw = request.getParameter("adminpsw"); 
            String inputNomeAtendenteCadastrar = request.getParameter("inputNomeAtendenteCadastrar");
            String inputEmailAtendenteCadastrar = request.getParameter("inputEmailAtendenteCadastrar");
            String inputSenhaAtendenteCadastrar = request.getParameter("inputSenhaAtendenteCadastrar");
            String inputIdentAtendenteHabilitar = request.getParameter("inputIdentAtendenteHabilitar");
            String inputEmailAtendenteHabilitar = request.getParameter("inputEmailAtendenteHabilitar");
            String inputIdentAtendenteEditar = request.getParameter("inputIdentAtendenteEditar");
            String inputEmailAtendenteEditar = request.getParameter("inputEmailAtendenteEditar");
            String inputIdentAtendenteEditConfir = request.getParameter("inputIdentAtendenteEditConfir");
            String inputEmailAtendenteEditConfir = request.getParameter("inputEmailAtendenteEditConfir");
            String inputNascAtendenteEditConfir = request.getParameter("inputNascAtendenteEditConfir");
            String inputAfiliAtendenteEditConfir = request.getParameter("inputAfiliAtendenteEditConfir");
            String inputIdentAtendenteDesativar = request.getParameter("inputIdentAtendenteDesativar");
            String inputEmailAtendenteDesativar = request.getParameter("inputEmailAtendenteDesativar");
            
            request.setAttribute("adminpsw", adminpsw);
            request.setAttribute("inputNomeAtendenteCadastrar", inputNomeAtendenteCadastrar);
            request.setAttribute("inputEmailAtendenteCadastrar", inputEmailAtendenteCadastrar);
            request.setAttribute("inputSenhaAtendenteCadastrar", inputSenhaAtendenteCadastrar);
            request.setAttribute("inputIdentAtendenteHabilitar", inputIdentAtendenteHabilitar);
            request.setAttribute("inputEmailAtendenteHabilitar", inputEmailAtendenteHabilitar);
            request.setAttribute("inputIdentAtendenteEditar", inputIdentAtendenteEditar);
            request.setAttribute("inputEmailAtendenteEditar", inputEmailAtendenteEditar);
            request.setAttribute("inputIdentAtendenteEditConfir", inputIdentAtendenteEditConfir);
            request.setAttribute("inputEmailAtendenteEditConfir", inputEmailAtendenteEditConfir);
            request.setAttribute("inputNascAtendenteEditConfir", inputNascAtendenteEditConfir);
            request.setAttribute("inputAfiliAtendenteEditConfir", inputAfiliAtendenteEditConfir);
            request.setAttribute("inputIdentAtendenteDesativar", inputIdentAtendenteDesativar);
            request.setAttribute("inputEmailAtendenteDesativar", inputEmailAtendenteDesativar);
            
            
            //Teste pega variavel
            //out.println("<h1>Teste Pega variavel " + "</h1>");
            
            //out.println( "Variavel = " + adicionarAtendenteInput2);
            
            /*request.getRequestDispatcher(".jsp").forward(request, response);*/
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
