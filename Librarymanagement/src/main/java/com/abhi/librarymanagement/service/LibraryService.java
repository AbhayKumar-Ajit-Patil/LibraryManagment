package com.abhi.librarymanagement.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.abhi.librarymanagement.dao.LibraryDAO;
import com.abhi.librarymanagement.dto.LibraryDTO;


@Component
public class LibraryService {

	@Autowired
	private LibraryDAO libraryDAO;

	public boolean addBook(String title, String author, String genre, long availability) {
		LibraryDTO libraryDTO = new LibraryDTO();
		libraryDTO.setTitle(title);
		libraryDTO.setAuthor(author);
		libraryDTO.setGenre(genre);
		libraryDTO.setAvailability(availability);
		try {
			libraryDAO.addbook(libraryDTO);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public List<LibraryDTO> findAllLibrary() {
	List<LibraryDTO> contacts = libraryDAO.findAllBooks();
	if(contacts.size()> 0)

	return contacts;
	else
		return null;
	}
	public boolean deleteBookById(int id) {
		try {
			libraryDAO.deleteBookById(id);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}
	public LibraryDTO findBookById(int id) {
		return libraryDAO.findBookById(id);
	}

	public boolean updateBook(int id, String title, String author, String genre, long availability) {
		try {
			libraryDAO.updateBook(id, title,author,genre,availability);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
