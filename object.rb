class Lol_champions
  def initialize(name, role, lane, region)
    @name = name
    @role = role
    @lane = lane
    @region = region
  end

  #Getter methods
  def name
    @name
  end

  def role
    @role
  end

  def lane
    @lane
  end

  def region
    @region
  end

  #Setter methods
  def name=(new_name)
    @name = new_name
  end

  def role=(new_role)
    @role = new_role
  end

  def lane=(new_lane)
    @lane = new_lane
  end

  def region=(new_region)
    @region = new_region
  end
end

#shorter code
# class Lol_champions
#   attr_accessor :name, :role, :lane, :region
#   def initialize(name, role, lane, region)
#     @name = name
#     @role = role
#     @lane = lane
#     @region = region
#   end
# end


champion = Lol_champions.new("Caitlyn", "Marksman", "Bottom", "Piltover")

puts champion.name
puts champion.role
puts champion.lane
puts champion.region
puts "\n"

champion.name = 'Fiora'
champion.role = 'Fighter'
champion.lane = 'Top'
champion.region ='Demacia'

puts champion.name
puts champion.role
puts champion.lane
puts champion.region
