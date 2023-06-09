package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.dto;

public class dao {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("abc");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public String insert(dto d) {
		et.begin();
		em.persist(d);
		et.commit();
		return "inserted";
	}

	public String remove(int eid) {
		dto d = em.find(dto.class, eid);

		et.begin();
		em.remove(d);
		et.commit();

		return "rmd";
	}

	public dto fetch(int i) {

		dto d = em.find(dto.class, i);

		return d;
	}

	public List<dto> fetchall() {

		Query q = em.createQuery("select vn from emp vn");
		List<dto> l = q.getResultList();

		return l;
	}

	public void update(int eid, String name, String gd) {
		dto d= em.find(dto.class, eid);
		
		
		d.setGender(gd);
		d.setName(name);
		et.begin();
		em.merge(d);
		et.commit();
		
	}

}
