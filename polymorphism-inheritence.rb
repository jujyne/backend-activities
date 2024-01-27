class Bakery_item
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def bake
    puts "Baking #{@name}"
  end
end

class Cake < Bakery_item
  def bake
    puts "Baking a delicious #{@name} cake!"
  end
end

class Cookie < Bakery_item
  def bake
    puts "Baking yummy #{@name} cookies!"
  end
end


black_forest = Cake.new("Black Forest")
chocolate_chip_cookies = Cookie.new("Chocolate Chip")

bakery_items = [black_forest, chocolate_chip_cookies]

bakery_items.each do |item|
  item.bake
  puts "\n"
end