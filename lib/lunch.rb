require 'date'
require_relative './west_midtown.rb'
require_relative './downtown.rb'

LOCATIONS = ['Downtown', 'West Midtown'].freeze

def starting_prompt
  if Date.today.tuesday?
    puts "Save your money; it's team lunch day."
    exit
  else
    puts 'Where are you looking for food?'
    puts "Enter a number.\n"
    print_locations
  end
end

def print_locations
  LOCATIONS.each_with_index do |loc, i|
    puts "#{i + 1}. #{loc}"
  end
end

def declare_locale
  @locale_number = gets.chomp.to_i
end

def pick_spot
  case @locale_number
  when 1
    puts Downtown::LUNCH_SPOTS.sample
  when 2
    puts WestMidtown::LUNCH_SPOTS.sample
  else
    puts "Please enter a valid number option.\n"
    print_locations
    declare_locale
  end
end

def lunchtime_jamboree
  starting_prompt
  declare_locale
  pick_spot
end

lunchtime_jamboree
