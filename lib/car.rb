class Car
  attr_reader :description,
              :year,
              :model,
              :color,
              :age

  def initialize(car_info)
    @car_info = car_info
    @description = car_info[:description]
    @year = car_info[:year]
  end

  def make
    @description.gsub("Green Ford Mustang", "Ford")
  end

  def model
    @description.gsub("Green Ford Mustang", "Mustang")
  end

  def color
    @description.gsub("Green Ford Mustang", "Green")
  end

  def age
    2021 - @year.to_i
  end

end
