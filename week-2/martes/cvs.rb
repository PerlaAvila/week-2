require 'faker'
require 'csv'

class Person
  attr_accessor :first_name, :last_name, :email, :phone
  def initialize(first_name, last_name, email, phone)
     @first_name = first_name
     @last_name = last_name
     @email = email
     @phone = phone
  end

  def self.persons_wanted(num)
    attr_accessor :array_people
    @array_people = []
    num.times do 
      @array_people << Person.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::PhoneNumber.phone_number)
    end
    @array_people
  end
end

class PersonWriter
  attr_accessor :file

  def initialize(file, array)
    @file = file
    @people = array
  end
  def cvs_creator
    CSV.open(@file, "wb") do |csv|
      @people.each do |person|
        csv << [person.first_name, person.last_name, person.email, person.phone]
      end
    end
  end
end

class PersonParser
  attr_accessor :array_persons
  def initialize(file)
    @file = file
  end

  def people
    @array_persons = []
    csv = CSV.read(@file)
    csv.each do |row|
      @array_persons << row
    end
    p @array_persons[0..9]
  end
end

class PersonModifier
  def initialize(file)
    @file = file
  end

  def cvs_modifier
    array_modifier.each do |new_name|
      new_person_name = Person.new(Faker::Name.first_name, Faker::Name.last_name)
       @array_persons << new_name
    end
  end
end
# people = Person.persons_wanted(20)
# person_writer = PersonWriter.new("people.csv", people)
# person_writer.cvs_creator


# parser = PersonParser.new('people.csv')
# people = parser.people




