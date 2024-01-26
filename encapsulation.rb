class Book
  def initialize(title, author)
    @title = title
    @author = author
  end

  def display_info
    puts "Title: #{@title}"
    puts "Author: #{@author}"
  end
end


class Phone
  def initialize(brand, model)
    @brand = brand
    @model =model
  end

  def display_info
    puts "Brand: #{@brand}"
    puts "Model: #{@model}"
  end
end

book = Book.new("A Dance with Dragons", "George R. R. Martin")
puts "Book"
book.display_info

phone = Phone.new("Iphone", "17 Pro Max")
puts "Phone"
phone.display_info