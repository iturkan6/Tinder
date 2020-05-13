package app;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.*;
import java.util.*;
import java.util.List;
import java.util.stream.Collectors;

public class TestServlet extends HttpServlet {

    private final TemplateEngine engine;

    List<String> users = Arrays.asList("Turkan", "Kamran", "Emin", "Leman");
    int n = 0;

    public TestServlet(TemplateEngine engine) {
        this.engine = engine;
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        try(PrintWriter pw = resp.getWriter()) {
//            pw.print("Hello World");
//        }
//    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String result = new BufferedReader(new FileReader(new File("src\\main\\java\\app\\content\\like-page.html")))
//                .lines().collect(Collectors.joining("\n"));
//        try(PrintWriter pw = resp.getWriter()) {
//            pw.print(result);
//        }
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HashMap<String, Object> data = new HashMap<>();
        if(n < users.size()) {
            data.put("Name", users.get(n));
            engine.render("like-page.ftl", data, resp);
        }else n = 0;

//        try(PrintWriter pw = resp.getWriter()) {
//            pw.print(result);
//        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("Button");
        CheckLike check = new CheckLike();
        String result = check.check(param);
        resp.sendRedirect("/users");
//        try (PrintWriter pw = resp.getWriter()) {
//            pw.print(result);
//        }
    }
}
