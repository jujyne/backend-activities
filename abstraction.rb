class User
  attr_writer :otp
  def initialize (username, password, otp )
    @username = username
    @password = password
    @otp = otp
  end

  def login
    puts "Logging in..."
    authenticate 
  end

  protected
  def authenticate
    if @otp == 123456
      puts "Logged in successfully"
    elsif
      puts "Invalid login credentials"
    end
  end
end


user = User.new("juan", "pass1234", 5555 )

user.login
user.otp = 123456
user.login



