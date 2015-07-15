require 'json'

class Vehicles
  @@all_vehicles = JSON.parse(File.open('../data/vehicles.json', 'r').read)
  
  class << self
    def all
      @@all_vehicles
    end
  end

end