class Owner
  attr_reader :name,
              :occupation,
              :cars

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
    @car = Car.new({description: 'Green Ford Mustang', year: '1967'})
  end

  def buy(car)
    car = Car.new({description: 'Green Ford Mustang', year: '1967'})
    # car = Car.const_get('1967 Green Ford Mustang')
  end

end
