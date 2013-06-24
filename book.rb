# use "enshelf" and "unshelf" methods
class Book
	attr_accessor :title, :author, :shelf

	def initialize(title, author, shelf)
		@title = title
		@author = author
		@shelf = shelf
	end
		
	def enshelf  #put on shelf    
		puts @title + ' is available.'
	end
			
	def unshelf   #taken off shelf
		puts @title + ' is unavailable.'
	end

end

x = Book.new('Red Wall', 'Brian', 'Fantasy')
x.unshelf
puts x.author
puts x.shelf
			
