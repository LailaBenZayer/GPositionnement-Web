package controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ma.entites.SmartPhone;
import ma.entites.Utilisateur;
import ma.metier.SmartPhoneLocal;
import ma.metier.UtilisateurLocal;

/**
 * Servlet implementation class SmartPhoneController
 */
@WebServlet("/SmartPhoneController")
public class SmartPhoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SmartPhoneController() {
		super();
	}

	@EJB
	private SmartPhoneLocal service;

	@EJB
	private UtilisateurLocal serviceUser;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public List<Utilisateur> allUser() {
		return serviceUser.findAll();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("op") == null) {
			String imei = request.getParameter("imei");

			if (imei != null) {
				int idUser = Integer.parseInt(request.getParameter("user"));
				Utilisateur user = serviceUser.findById(idUser);

				service.Create(new SmartPhone(imei, user));
			}
			System.out.println("Ajout");
		} else if (request.getParameter("op").equals("delete")) {
			String indice = request.getParameter("indice");
			service.delete(service.findById(Integer.parseInt(indice)));
			System.out.println("Suppression");
		} else if (request.getParameter("op").equals("update")) {
			String indice = request.getParameter("indice");
			String imei = request.getParameter("imei");

			int idUser = Integer.parseInt(request.getParameter("user"));
			Utilisateur user = serviceUser.findById(idUser);
			System.out.println("***ID of User***" + user.getId() + "**ID***" + indice);
			service.update(new SmartPhone(Integer.parseInt(indice), imei, user));
			System.out.println("updaaaaaaaaate");
		}
		response.setContentType("application/json");
		List<SmartPhone> phones = service.findAll();
		Gson json = new Gson();
		response.getWriter().write(json.toJson(phones));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
