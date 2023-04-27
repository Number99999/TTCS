/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import model.product;
import model.User;
import service.cart;
/**
 *
 * @author MSII
 */
@WebServlet(name = "Pay", urlPatterns = {"/pay"})
public class Pay extends HttpServlet {
    @Override 
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
    User user = (User) session.getAttribute("user");
    int price =0;
    int count =0;
    if (user!= null)
    {
      HashMap<product,Integer> map = cart.getProductCart(User.getUsername());
      for (Map.Entry<product,Integer> item : map.entrySet())
      {
        count +=item.getValue();
        price = price + item.getKey().getPrice()*item.getValue();
      }
    req.setAttribute("price", price);
    req.setAttribute("count", count);
    req.setAttribute("cart", map);
      
    }
    if (count==0)
    {
    	resp.sendRedirect(req.getContextPath()+"/home");
    }
    else { 
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/user/pay.jsp");
    	requestDispatcher.forward(req, resp);
    }
  }
}
