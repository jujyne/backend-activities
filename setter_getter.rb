

class Profile
  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end

  def full_name
     @full_name
  end

  def age
    @age
  end

  def address
    @address
  end

  def work
    @work
  end

  def full_name=(new_name)
    @full_name = new_name
  end

  def age=(new_age)
    @age = new_age
  end

  def address=(new_address)
    @address = new_address
  end

  def work=(new_work)
    @work = new_work
  end
end

#shorter code
# class Profile
#   attr_accessor :full_name, :age, :address, :work
#   def initialize(full_name, age, address, work)
#     @full_name = full_name
#     @age = age
#     @address = address
#     @work = work
#   end
# end

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')
my_profile.full_name = 'Juan Cruz'
my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.full_name
puts my_profile.age
puts my_profile.address
puts my_profile.work