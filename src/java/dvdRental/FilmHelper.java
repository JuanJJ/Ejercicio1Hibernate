/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dvdRental;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Alumno_2DAW
 */
public class FilmHelper {
    Session session=null;
    public FilmHelper(){
        SessionFactory sessionFactory=NewHibernateUtil.getSessionFactory();
        session=sessionFactory.openSession();
        org.hibernate.Transaction tx=session.beginTransaction();
    }
    
    public List<Category> getCategorias(){
        List<Category>categorias;
        Query q =session.createQuery("from Category");
        categorias=(List<Category>)q.list();
        return categorias;
    }
    public List<Film> getPeliculas(int idCategoria){
        List<Film>peliculas;
        Query q =session.createQuery("from Film as film where film.filmId in ( select filmCategory.film.filmId from FilmCategory as filmCategory where filmCategory.category="+idCategoria+")");
        peliculas=(List<Film>)q.list();
        return peliculas;
    }
}
