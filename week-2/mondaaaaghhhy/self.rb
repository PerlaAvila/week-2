# class DummyClass
#     #attr_reader :color

#     def initialize(color)
#       @color = color
#     end

#     def intance_method
#         puts "Dentro de un método de instancia"
#         puts "En este contexto self es igual a: #{self}"
#     end

#     def self.method1
#             puts "Dentro de un método de clase"
#         puts "En este contexto self es igual a: #{self}"
#     end
# end

# dummy_class = DummyClass.new("red")
# dummy_class_2 = DummyClass.new("green")
# puts dummy_class_2.intance_method
# puts DummyClass.method1 
# p dummy_class.color = "blue"

class Post
  attr_writer :title

  def self.author
    "Jimmy"
  end

  def full_title
    "#{@title} by #{self.class.author}"
  end
end

pst = Post.new
pst.title = "Delicious Ham"
puts pst.full_title

=begin
When we call object.method self refers to the object itself
if we call the method self inside a class we are refering to the current 
class, defining a method on self creates a class method.

=end