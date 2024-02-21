# 1
class Laptop
  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def brand
    @brand
  end
  def model
    @model
  end
end

new_laptop = Laptop.new("Acer", "X1")
puts new_laptop.brand
puts new_laptop.model

puts '--'

#2
class Gadget
  attr_reader :name
  attr_writer :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

new_gadget = Gadget.new("Icecream Scooper", "3450")

puts new_gadget.name
new_gadget.price = "500"

puts '--'

# 3
class User
  def initialize(username)
    @username = username
  end

  def username= (username)
    raise ArgumentError, "Username cannot be empty" if username.to_s.strip.empty?
    @username = username
  end
end

new_user = User.new("Cooler1")

# new_user.username = ""

puts '--'

# 4
class Appliance
  def show_info
    puts "This is a household appliance."
  end
end
class Refrigerator < Appliance
  def temp
    puts "The lowest temperature is -5"
  end
end
class Microwave < Appliance
  def speed
    puts "It is really fast to heat up"
  end
end

new_fridge = Refrigerator.new
new_fridge.show_info
new_fridge.temp
new_microwave = Microwave.new
new_microwave.show_info
new_microwave.speed

puts '--'

# 5
module Payments
  class Invoice
    def payment
      puts "Invoice was used"
    end
  end
  class Receipt
    def payment
      puts "Receipt was used"
    end
  end
end

new_payment = Payments::Invoice.new
new_payment.payment
new_payment2 = Payments::Receipt.new
new_payment2.payment

puts '--'

# 6
module Driveable
  def drive
    puts "This can drive."
  end
end

class Car
  include Driveable
end

class Truck
  include Driveable
end

new_truck = Truck.new
new_truck.drive
new_car = Car.new
new_car.drive

puts '--'

# 7
class Writer
  def create
    puts "Writes a cool story"
  end
end

class Painter
  def create
    puts "Paints something cool"
  end
end

def show_case_talent(artists)
  artists.each do |x|
    x.create
  end
end

artists = [Writer.new, Painter.new]

show_case_talent(artists)

puts '--'

# 8
class BankAccount
  def initialize
    @balance = 0
  end
  def deposit(amount)
    @balance += amount
    puts "Deposit complete"
    log_transaction(amount, "Deposit")
  end
  def withdraw(amount)
    @balance -= amount
    puts "Withdrawal complete"
    log_transaction(amount, "Withdrawal")
  end

  private

  def log_transaction(amount, type)
    puts "#{type}: #{amount}"
  end
end

account = BankAccount.new
account.deposit(200)
account.withdraw(50)

puts '--'

# 9
class Camera
  attr_accessor :status

  def initialize
    @status = "Off"
  end
  def turn_on
    self.status = "On"
    puts "Status is: #{self.status}"
  end
  def turn_off
    self.status = "Off"
    puts "Status is: #{self.status}"
  end
end

new_camera = Camera.new
new_camera.turn_on
new_camera.turn_off

puts '--'

# 10
class Quiz
  questions = {
    question_about_math: "What is 2 + 2",
    question_about_history: "What happened in 2020"
  }
  questions.each do |method_name, question|
    define_method(method_name) do
      puts question
    end
  end
end

new_quiz = Quiz.new

new_quiz.question_about_math
new_quiz.question_about_history
