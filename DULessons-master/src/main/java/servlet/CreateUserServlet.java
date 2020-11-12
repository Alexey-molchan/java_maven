package servlet;

import dao.UserDao;
import dao.UserDaoFromDBImpl;
import entity.User;
import lib.Role;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//TODO: Сервлет не принимает файл фотографии, кроме того не принимает и поля формы из-за того, что форма multipart/formdata, а сервлет - нет. Доделать по примеру UpdateUserServlet.java
//TODO: Сервлет создает пользователя в базе с пустыми полями при нажатии кнопки перехода на форму создания пользователя. Это происходит из-за того, что POST метод и направляет на createuser.jsp и создает пользователя. Эту логику надо разделить. Пример все там же: UpdateUserServlet.java
@WebServlet("/createuser")
public class CreateUserServlet extends HttpServlet {

    private UserDao userDao = new UserDaoFromDBImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Boolean isAdmin = Boolean.parseBoolean(req.getParameter("isAdmin"));
        Role role = Role.getRoleByBooleanValue(isAdmin);
        User user = new User(req.getParameter("login"), req.getParameter("password"),
                req.getParameter("first_name"), req.getParameter("last_name"), role);
        userDao.create(user);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/createuser.jsp");
        requestDispatcher.forward(req, resp);

        resp.sendRedirect(req.getContextPath() + "/alluser");
    }
}























