require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Chet")
co2 = CarOwner.new("Derek")
co3 = CarOwner.new("Ronald")

m1 = Mechanic.new("Trudy", "Trucks")
m2 = Mechanic.new("Bill", "Sports Cars")
m3 = Mechanic.new("Tony", "Hybrids/Electric")

c1 = Car.new("Honda", "Accord", "Sedan", co1, m2)
c2 = Car.new("Toyota", "Ridgeback", "Trucks", co2, m1)
c3 = Car.new("Lamborgini", "Diablo", "Sport Cars", co3, m2)
c4 = Car.new("Toyota", "Prius", "Hybrids/Electric", co2, m3)
c5 = Car.new("Chevy", "Leaf", "Hybrids/Electric", co1, m3)



binding.pry
