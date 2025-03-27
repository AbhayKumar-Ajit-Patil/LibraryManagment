package com.abhi.librarymanagement.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.abhi.librarymanagement.dto.LibraryDTO;
@Component
public class LibraryDAO {

	static {try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}
	private EntityManagerFactory entityManagerFactory;
	private EntityManager entityManager;
	private EntityTransaction entityTransaction;

	
	private void openConnection() {
		entityManagerFactory = Persistence.createEntityManagerFactory("Library_management");
		entityManager = entityManagerFactory.createEntityManager();
		entityTransaction = entityManager.getTransaction();
	}

	private void closeConnection() {
		if (entityManagerFactory != null)
			entityManagerFactory.close();
		if (entityManager != null)
			entityManager.close();
		if (entityTransaction != null) {
			if (entityTransaction.isActive())
				entityTransaction.rollback();
		}
	}
	public void addbook(LibraryDTO libraryDTO) {
		
		openConnection();
		entityTransaction.begin();
		entityManager.persist(libraryDTO);
		entityTransaction.commit();
		closeConnection();
	}

	@SuppressWarnings("unchecked")
	public List<LibraryDTO> findAllBooks() {
		openConnection();
		Query query = entityManager.createQuery("SELECT library FROM LibraryDTO library");
		List<LibraryDTO> library = query.getResultList();
		closeConnection();
		return library;
	}

	public void deleteBookById(int id) {
		openConnection();
		entityTransaction.begin();
		LibraryDTO book = entityManager.find(LibraryDTO.class, id);
		entityManager.remove(book);
		entityTransaction.commit();
		closeConnection();
		
	}

	public LibraryDTO findBookById(int id) {
		openConnection();
		LibraryDTO libraryDTO = entityManager.find(LibraryDTO.class, id);
		closeConnection();
		return libraryDTO;
	}

	public void updateBook(int id, String title, String author, String genre, long availability) {
		openConnection();
		LibraryDTO bookDTO = entityManager.find(LibraryDTO.class, id);
		bookDTO.setTitle(title);
		bookDTO.setAuthor(author);
		bookDTO.setGenre(genre);
		bookDTO.setAvailability(availability);
		
		entityTransaction.begin();
		entityManager.persist(bookDTO);
		entityTransaction.commit();
		closeConnection();
	}

}
