# pblibrary.rb
# define class Library
# Add shelves and report number of shelves
# Report all books on a shelf
	

# define class Shelf
# Report total number of shelves and books
# Each shelf should know the book it contains
class Shelf
	attr_accessor :shelf_label, :books_on_shelf

	def initialize (shelf_label)
		@shelf_label = shelf_label
		puts @shelf_label + ' shelf'
		@books_on_shelf=[]
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

fiction = Shelf.new("fiction")
nonfiction = Shelf.new("nonfiction")
red_wall = Book.new("Red Wall")
oz = Book.new("OZ")
puts red_wall.title
puts fiction.shelf_label
puts fiction.books_on_shelf
red_wall.enshelf(fiction)
oz.enshelf(fiction)
puts '----------------'
fiction.books_on_shelf.each do |book|
	puts book.title
end
puts '----------------'
red_wall.unshelf(fiction)
fiction.books_on_shelf.each do |book|
	puts book.title
end

