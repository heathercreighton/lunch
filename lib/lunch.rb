require 'date'

LOCATIONS = ['Downtown', 'West Midtown'].freeze
DOWNTOWN_SPOTS = [
  "Alibaba's",
  "Rosa's",
  'The Food Shoppe',
  'Naanstop',
  'Dua',
  'Blossom Tree',
  "Moe's",
  'Buenos Dias'
].freeze
WEST_MIDTOWN_SPOTS = [
  'Yeah Burger',
  'West Egg',
  'Bone Garden',
  'Hankook',
  'Figo',
  'Raku',
  'Thumbs Up',
  'Tom + Chee',
  "Amelie's",
  'Six Feet Under',
  'Stationside',
  "Delia's",
  'Touch (Indian)',
  'Zen on 10',
  "Pauley's Crepes"
].freeze

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
    puts DOWNTOWN_SPOTS.sample
  when 2
    puts WEST_MIDTOWN_SPOTS.sample
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
