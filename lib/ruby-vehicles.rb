require 'json'

class Vehicles
  @@all_vehicles = JSON.parse(File.open('../data/vehicles.json', 'r').read)
  
  class << self
    def all
      @@all_vehicles
    end
    
    def where(options)
      results = []
      
      @@all_vehicles.each do |vehicle|
        results << vehicle if check_match(vehicle, options)
      end
    
      results
    end
    
    def check_match(vehicle, options)
      matches = []
     
      # iterate through options to see if vehicle's
      # attributes match the query
      options.keys.each.with_index do |option, index|
        if vehicle["#{option}"] == options.values[index]
          matches << true
        end
      end
      
      # if all options match the vehicles attributes,
      # return vehicle as a match
      return true if matches.size == options.keys.size
      return false
    end 
  end

end