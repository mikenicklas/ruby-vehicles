# Ruby Vehicles
A Ruby library for various manufacturers and models

## Usage
Simple require the ruby-vehicles file into your application and take advantage of the Vehicles class.

    Vehicles.all
    # => [{"year"=>"1909", "manufacturer"=>"Ford", "model"=>"Model T"},...]
    # => includes 7,000+ model years
    
    Vehicles.where(options)
    # => Pass in an option hash which can include year, manufacturer, and model.
    
    Vehicles.where(year: "1999", manufacturer: "Nissan")
    # =>{"year"=>"1999", "manufacturer"=>"Nissan", "model"=>"Altima"}
    # =>{"year"=>"1999", "manufacturer"=>"Nissan", "model"=>"Frontier"}
    # =>{"year"=>"1999", "manufacturer"=>"Nissan", "model"=>"Maxima"}
    # =>{"year"=>"1999", "manufacturer"=>"Nissan", "model"=>"Pathfinder"}
    # =>{"year"=>"1999", "manufacturer"=>"Nissan", "model"=>"Quest"}
    # =>{"year"=>"1999", "manufacturer"=>"Nissan", "model"=>"Sentra"}
    
    Vehicles.where(manufactuer: "Maserati")
    # => {"year"=>"1984", "manufacturer"=>"Maserati", "model"=>"Quattroporte"}
    # => {"year"=>"1984", "manufacturer"=>"Maserati", "model"=>"Biturbo"}
    # => for all model years manufactured by Maserati
    
### Moving Forward
This library is still in it's early stages. I will be adding additional functionality to make the #where method more acommodating. Adding in error-checking for invalid options. Organize as a gem for easier usage.

Data sourced from: https://github.com/n8barr/automotive-model-year-data