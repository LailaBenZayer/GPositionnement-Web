
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

import ma.entites.Utilisateur;
import ma.metier.SmartPhoneLocal;
import ma.metier.UtilisateurLocal;

public class ChartDto {
    
    private String key;
    private Long value;

    public ChartDto(String key, Long long1) {
        this.key = key;
        this.value = long1;
    }
    
}
