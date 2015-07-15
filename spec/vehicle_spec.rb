require 'rspec'
require_relative '../lib/ruby-vehicle.rb'

describe Vehicles do
  
  it "should return an array of vehicle information" do
    expect(Vehicles.all.size).to be > 6000
  end
  
end