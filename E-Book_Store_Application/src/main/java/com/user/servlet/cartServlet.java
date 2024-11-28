package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AddBooksImpl;
import com.DAO.cartDAOImpl;
import com.db.DbConnect;
import com.entity.BookDetails;
import com.entity.Cart;
import com.mysql.jdbc.Connection;

@WebServlet("/cart")
public class cartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int bid = Integer.parseInt(req.getParameter("bid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		
		AddBooksImpl ad = new AddBooksImpl(DbConnect.getConn());
		
		BookDetails b =  ad.getBook(bid);
		
		Cart c = new Cart();
		
		c.setBid(bid);
		c.setUid(uid);
		c.setBookName(b.getBookName());
		c.setAuthor(b.getAuthor());
		c.setPrice(b.getPrice());
		c.setTotalPrice(b.getPrice());
		
     cartDAOImpl cd = new cartDAOImpl((Connection) DbConnect.getConn());		
	  boolean res = 	cd.addToCart(c);
	  
	  HttpSession session = req.getSession();
	  
	  if(res) {
		  
		  session.setAttribute("addCart", "Book Added to  the cart");
		  resp.sendRedirect("all_new_books.jsp");
	  }else {
		  session.setAttribute("failed", "Something wrong on server");
		  resp.sendRedirect("all_new_books.jsp");
	  }
	}
}
