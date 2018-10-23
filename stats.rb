# This is a shitty script to generate some stats about our events. It should be mostly exact, but definitely not 100% as it typos amd different ways of writing names and all will "break" it
require 'pry'
require 'yaml'
events = YAML.load(File.read("_data/io-events.yml"))

speakers = {}
talk_types = {}
locations = {}
meta_ios = 0

events.each do |event|
  locations[event['location']] ||= 0
  locations[event['location']] += 1

  if event['talks'].nil? && event['title'].start_with?('Méta')
    meta_ios += 1
    next
  end

  raise 'Wait, an event with no talk that is NOT a meta?' if event['talks'].nil?

  event['talks'].each do |talk|
    talk['talk_type'] ||= 'NO TYPE'
    talk_types[talk['talk_type']] ||= 0
    talk_types[talk['talk_type']] += 1

    speakers[talk['authors']] ||= {types: {}, total_talks: 0}
    speakers[talk['authors']][:types][talk['talk_type']] ||= 0
    speakers[talk['authors']][:types][talk['talk_type']] +=1
    speakers[talk['authors']][:total_talks] +=1
  end
end

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Locations:"
puts locations.sort_by {|_key, value| -value}
puts
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Talk types:"
puts talk_types.sort_by {|_key, value| -value}
puts
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Speakers ayant le plus de talks:"
# binding.pry
puts speakers.sort_by {|_key, value| -value[:total_talks]}.take(10)
puts
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Nombre de metas:"
puts meta_ios
puts
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Nombre d'événemnts:"
puts events.count
