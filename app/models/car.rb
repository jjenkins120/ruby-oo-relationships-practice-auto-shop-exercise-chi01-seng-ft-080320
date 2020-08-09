class Car

  attr_reader :make, :model, :classification, :owner_instance, :mechanic_instance

  @@all = []

  def initialize(make, model, classification, owner_instance, mechanic_instance)
    @make = make
    @model = model
    @classification = classification
    @owner_instance = owner_instance
    @mechanic_instance = mechanic_instance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    all_car_classifications = self.all.map do |car_instance|
      car_instance.classification
    end
    all_car_classifications.uniq
  end


  def self.find_mechanics(classification)
    mechanic_array = Mechanic.all.select do |mechanic_instance|
      mechanic_instance.specialty == classification
    end
    mechanic_array.map do |instance|
      instance.name
    end
  end 


end


=begin
XCar.all Get a list of all cars

XCar.classifications Get a list of all car classifications

?Car.find_mechanics(classification) Get a list of mechanics that have an expertise that matches the passed in car classification
=end