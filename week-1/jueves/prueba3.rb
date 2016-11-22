class Animals
  attr_writer :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def name
    @name
  end


end

gato = Animals.new("clemen", 8)

p gato.name 
p gato.age
p gato.name = "Camila"
p gato.age = 6