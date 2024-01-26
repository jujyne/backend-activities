class Confection

  def make
    puts "Baking at 350 degrees for 25 minutes"
  end

end

class Banana_cake < Confection

end

class Cupcake < Confection
  def make
    super
    puts "Applying frosting"
  end
end


banana_cake = Banana_cake.new
puts "Banana Cake"
banana_cake.make

puts "Cupcake"
cupcake = Cupcake.new
cupcake.make




