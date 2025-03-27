package com.abhi.librarymanagement.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abhi.librarymanagement.dto.LibraryDTO;
import com.abhi.librarymanagement.dto.UserDTO;
import com.abhi.librarymanagement.service.LibraryService;

@Controller
public class   LibraryController {

	@Autowired
	private LibraryService libraryService;

	@RequestMapping(path = "/add-book-page")
	protected String getAddContactPage(HttpSession httpSession) {
		UserDTO authenticatedUser = (UserDTO) httpSession.getAttribute("authenticatedUser");
		if (authenticatedUser != null)
			return "add_book";
		else
			return "login";
	}


	@RequestMapping(path = "/add-book", method = RequestMethod.POST)
	protected String addBook(@RequestParam(name = "title") String title,
			@RequestParam(name = "author") String author, @RequestParam(name = "genre") String genre,
			@RequestParam(name = "availability") long availability, ModelMap modelMap , HttpSession httpSession){
		boolean bookAdded = libraryService.addBook(title,author,genre,availability);
		if (bookAdded)
			modelMap.addAttribute("message", "Book added");
		else
			modelMap.addAttribute("message", "Something went wrong");
		return "library";
	}
	@RequestMapping(path = "/library")
	protected String findAllLibrary(ModelMap modelMap) {
		List<LibraryDTO> library = libraryService.findAllLibrary();
		if (library != null)
			modelMap.addAttribute("library", library);
		else
			modelMap.addAttribute("message", "Book not found");
		return "library";
	}
	@RequestMapping(path = "/delete-book")
	protected String deleteBookById(@RequestParam(name = "id") int id, ModelMap modelMap) {
		boolean bookDeleted = libraryService.deleteBookById(id);
		if (bookDeleted) {
			modelMap.addAttribute("message", "Book deleted");
			List<LibraryDTO> library = libraryService.findAllLibrary();
			if (library != null)
				modelMap.addAttribute("contacts", library);
			else
				modelMap.addAttribute("message", "Book not found");
		} else
			modelMap.addAttribute("message", "Something went wrong");
		return "library";
		
	}
	@RequestMapping(path = "/edit-book")
	protected String editBook(@RequestParam(name = "id") int id, ModelMap modelMap) {
		LibraryDTO book = libraryService.findBookById(id);
		modelMap.addAttribute("book", book);
		return "edit_book";
	}

	@RequestMapping(path = "/update-book", method = RequestMethod.POST)
	protected String updateBook(@RequestParam(name = "id") int id,
			@RequestParam(name = "title") String title, @RequestParam(name = "author") String author,
			@RequestParam(name = "genre") String genre, @RequestParam(name = "availability") long availability, ModelMap modelMap) {
		boolean bookUpdated = libraryService.updateBook(id, title,author,genre,availability);
		if (bookUpdated) {
			modelMap.addAttribute("message", "Book updated");
			List<LibraryDTO> library = libraryService.findAllLibrary();
			modelMap.addAttribute("library", library);
		} else
			modelMap.addAttribute("message", "Something went wrong");
		return "library";
	}
		

}




