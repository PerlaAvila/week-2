require 'faker'
array = [["meme","jdhf"], ["otot", "husah"], ["hsgd", "hdgsf", "DIOS"]]

array[0..1].each do |row|
  row.each_with_index do |value, index|
    p value
    p index
    if index == 0 
      puts value = Faker::Name.first_name
    end
  end
end