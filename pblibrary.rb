# pblibrary.rb
# define class Library
# Report all books it contains
class Library

	def initialize (library_title)
		@library_title = library_title
		@shelves=[]
	end
	
	def add_shelf(shelf) 
		@shelves << shelf
	end
	
	def delete_shelf(shelf)
		@shelves.delete(shelf)
	end
	
	def books
		puts @library_title + ' library'
		puts '----------------'
		@shelves.each do |shelf|
			shelf.books_on_shelf.each do |book|
				puts book.title
			end
		end
	end
	
end	

# define class Shelf
# Report total number of shelves and books
# Each shelf should know the book it contains
class Shelf
	attr_accessor :shelf_label, :books_on_shelf

	def initialize (shelf_label,library)
		@shelf_label = shelf_label
		puts @shelf_label + ' shelf'
		@books_on_shelf=[]
		library.add_shelf(self)
	end

	def enshelf(book)    #book object added to array
		@books_on_shelf << book
		puts book.title + ' has been added to the ' + @shelf_label + ' shelf'
	end
	
	def unshelf(book)     #book object deleted from array
		@books_on_shelf.delete(book)
		puts book.title + ' has been removed from the ' + @shelf_label + ' shelf'
	end
	
end


# define class Book
# use "enshelf" and "unshelf" methods
class Book
	attr_accessor :title  

	def initialize(title) 
		@title = title
		puts @title + ' is your book'
		
	end
		
	def enshelf(shelf)      #put on shelf    
		shelf.enshelf(self)
	end
			
	def unshelf(shelf)      #take off shelf
		shelf.unshelf(self)
	end

end


hudson = Library.new("Hudson")
fiction = Shelf.new("fiction", hudson)  #initialize
nonfiction = Shelf.new("nonfiction", hudson)
red_wall = Book.new("Red Wall")
oz = Book.new("OZ")
puts red_wall.title
puts fiction.shelf_label
puts fiction.books_on_shelf
red_wall.enshelf(fiction)
oz.enshelf(fiction)
hudson.books
puts '----------------'
#fiction.books_on_shelf.each do |book|
	#puts book.title
#end
#puts '----------------'
red_wall.unshelf(fiction)
#fiction.books_on_shelf.each do |book|
	#puts book.title
#end
hudson.books

