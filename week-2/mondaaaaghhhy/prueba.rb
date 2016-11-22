class LayingHen
  
  @@basket_hen = []
  
  def initialize(age)
    @age = 0
  end

  # Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
  def age!
   @age = @age += 1

    # if @age >= 3
    #   @@basket_hen << egg_1 = Egg.new
    #   @@basket_hen << egg_2 = Egg.new
    #   @@basket_hen << egg_3 = Egg.new
    #   @@basket_hen << egg_4 = Egg.new
    # end
    #  @age
  end

  # Returns +true+ if the hen has laid any eggs, +false+ otherwise
  def any_eggs?
    (@@basket_hen.empty?) ? false : true
  end

  # Returns an Egg if there are any
  # Raises a NoEggsError otherwise
  def pick_an_egg!
    raise NoEggsError, "The hen has not layed any eggs" unless self.any_eggs?
      @@basket_hen.each do |egg|
        return egg 
      end

    # egg-picking logic goes here

  end

    def old?
  end

  def increase_hatched_hour(hours)
  end
end

class Egg
  # Initializes a new Egg with hatched hours +hatched_hours+
  def initialize
  end

  # Return +true+ if hatched hours is greater than 3, +false+ otherwise
  def rotten?
  end
end
hen = LayingHen.new(0)
p hen.age!
# p hen.any_eggs?
# p hen.pick_an_egg!

