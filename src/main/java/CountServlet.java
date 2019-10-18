import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/count")
public class CountServlet extends HttpServlet {

    private int counter;

    public void init() throws ServletException {
        counter = 0;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String reset = request.getParameter("reset");

        if(reset != null){
            counter = 0;
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("counter: "+ (++counter));
    }



}
