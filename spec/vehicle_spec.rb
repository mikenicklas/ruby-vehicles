require 'rspec'
require_relative '../lib/ruby-vehicles.rb'

describe Vehicles do
  
  it "should return an array of vehicle information" do
    expect(Vehicles.all.size).to be > 6000
  end
  
  it "should be queryable with #where" do
    query = Vehicles.where(year: "2013", manufacturer: "Volvo")
    expect(query.size).to eq(4)
  end
  
end