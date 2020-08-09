class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car_instance|
      car_instance.mechanic_instance == self
    end
  end

  def car_owners
    car_array = Car.all.select do |car_instance|
      car_instance.mechanic_instance == self
    end
    car_array.map do |car_instance|
      car_instance.owner_instance
    end
  end

  def car_owners_names
    car_array = Car.all.select do |car_instance|
      car_instance.mechanic_instance == self
    end
    car_array.map do |car_instance|
      car_instance.owner_instance.name
    end
  end

end

=begin
XMechanic.all Get a list of all mechanics

XMechanic#cars Get a list of all cars that a mechanic services

XMechanic#car_owners Get a list of all the car owners that go to a specific mechanic

XMechanic#car_owners_names Get a list of the names of all car owners who go to a specific mechanic
=end
