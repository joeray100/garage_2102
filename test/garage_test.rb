
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'
require './lib/garage'

class GarageTest < Minitest::Test

  def setup
    @garage = Garage.new('Totally Safe Parking')
    @owner_1 = Owner.new('Regina George', 'Heiress')
  end

  def test_it_exists
    assert_instance_of Garage, @garage
  end

  def test_it_has_attributes
  skip
  end

end
