package web;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "index", urlPatterns = "/aula")
public class IndexServlet extends HttpServlet {
    public void doGet(
        HttpServletRequest request, 
        HttpServletResponse response) throws
        ServletException, IOException {
            request.setAttribute("mensagem", "Ola Servlet com JSP");
            //response.getWriter().print("Ola Servlet");
            request.getRequestDispatcher("/WEB-INF/resposta.jsp").forward(request, response);
        }
}