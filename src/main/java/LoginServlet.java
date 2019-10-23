import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

            if(session.getAttribute("user") != null){
                response.sendRedirect("/profile");
            }else{
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = username.equals("admin") && password.equals("password");

        if (validAttempt) {
            session.setAttribute("user", username);
//            request.getSession().setAttribute("user", username) // from walkthrough
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
