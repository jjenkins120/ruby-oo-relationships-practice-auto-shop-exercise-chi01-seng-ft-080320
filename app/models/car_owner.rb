class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car_instance|
      car_instance.owner_instance == self
    end
  end

  def mechanics
    car_array = Car.all.select do |car_instance|
      car_instance.owner_instance == self
    end
    car_array.map do |car_instance|
      car_instance.mechanic_instance.name
    end
  end

  def self.average_number_of_cars
    num_of_carowner = self.all.count.to_f
    num_of_cars = Car.all.count.to_f
    num_of_cars/num_of_carowner
  end

end


=begin
XCarOwner.all Get a list of all owners

XCarOwner#cars Get a list of all the cars that a specific owner has

XCarOwner#mechanics Get a list of all the mechanics that a specific owner goes to

CarOwner.average_number_of_cars Get the average amount of cars owned for all owners
=end