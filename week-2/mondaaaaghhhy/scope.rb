$local_var = "This is my local var" #The $ indicates that this is a global variable and can be used for all our following code
$global_var = "This is a global variable"
CONSTANT = 3.1416
class DummyClass
  
  @@class_variable = "This is a class variable"
  def initialize
    @instance_var = "This is my instance var"
  end

  def return_my_local_var
  #{}"#{$local_var}" #first we print our method with this format and it returned the default value
    $local_var = "This is my new local var" #Then we change the value of the variable, this can be done because the global variables are accesible at any point of our code.

  end

  def instance_var
    @instance_var
  end

  def instance_var=(value)
    @instance_var = value
  end
  def class_variable
    @@class_variable
  end

  def class_variable=(new_class_variable)
    @@class_variable = new_class_variable
  end
end

  def global_var
    $global_var
  end

  def global_var=(new_global_var)
    $global_var = new_global_var
  end

  def constant
    CONSTANT
  end


dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

dummy_1.class_variable = "New value for the class variable."
p dummy_2.class_variable
p global_var
global_var = "New global variable"
p global_var
p constant


=begin
Global var = they work for all the code no matter where we use them
Local var = we can use then in the code that we declared them.
Class Variable = Is shared among all instances of a class.
Instance Variables = Its values are local to specific instances of and object.
Constant = Once that we gave them a value we should not change it.
=end