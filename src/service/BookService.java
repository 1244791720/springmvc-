package service;

import java.util.List;

import Domain.Book;
import Domain.Category;

public interface BookService {

	List<Category> getAllCategories();

	Category getCategory(int id);

	List<Book> getAllBooks();
	
	Book save(Book book);
	
	Book update(Book book);
	
	Book get(long id);
	
	Long getNextId();




}
