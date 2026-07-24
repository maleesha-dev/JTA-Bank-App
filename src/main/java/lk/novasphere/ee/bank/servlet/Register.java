package lk.novasphere.ee.bank.servlet;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.novasphere.ee.bank.ejb.remote.RegisterService;
import lk.novasphere.ee.bank.exception.DuplicateEmailException;

import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {

    private static final double DEFAULT_OPENING_BALANCE = 1000;

    @EJB
    private RegisterService registerService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            registerService.registerUser(name, email, password, DEFAULT_OPENING_BALANCE);
            req.setAttribute("message", "Register successful");

            req.getRequestDispatcher("login.jsp").forward(req, resp);

        } catch (DuplicateEmailException e) {
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
}
