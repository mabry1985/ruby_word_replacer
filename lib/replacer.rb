#!/usr/bin/env ruby

require('pry')

def find_and_replace(file_path, to_replace, replace_with)
  file = File.open(file_path)
  file_data = file.read()
  file_data.length.times do
     file_data.sub!(to_replace, replace_with)
  end

  out_file = File.new("replaced#{to_replace}with#{replace_with}.txt", "w")
  out_file.puts(file_data)
  out_file.close
  return file_data

end


puts "Enter a file path"
user_file = gets.chomp
puts "Enter a word to replace"
user_to_replace = gets.chomp
puts "You want to replace #{user_to_replace}"
puts "Enter a word to replace with"
user_replace_with = gets.chomp
puts "Replace #{user_to_replace} with #{user_replace_with}"
puts "Replacing....."

puts find_and_replace(user_file,user_to_replace,user_replace_with)
