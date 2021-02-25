
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test

  def setup
    @owner_1 = Owner.new('Regina George', 'Heiress')
    @car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
  end

  def test_it_exists
    assert_instance_of Owner, @owner_1
  end

  def test_it_has_attributes
    assert_equal "Regina George", @owner_1.name
    assert_equal "Heiress", @owner_1.occupation
  end

  def test_owner_starts_with_no_cars_but_can_add_cars
    assert_equal [], @owner_1.cars
  end

  def test_owner_buys_car_and_adds_to_cars
    # skip
    # I have no idea what this means and google didn't help lol
    #1) Failure:
    # OwnerTest#test_owner_buys_car_and_adds_to_cars [test/owner_test.rb:28]:
    # No visible difference in the Car#inspect output.
    # You should look at the implementation of #== on Car or its members.
    #<Car:0xXXXXXX @car_info={:description=>"Green Ford Mustang", :year=>"1967"}, @description="Green Ford Mustang", @year="1967">

    assert_equal @car_1, @owner_1.buy('1967 Green Ford Mustang')
  end

end
