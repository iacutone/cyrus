require './lib/merger'
require './lib/sorter'
require './lib/format'

task :render_people do

	all_people = Merger.new
  all_people.merge_data

  puts "Output 1:"
  x = Sorter.sort_by_gender_then_last_name(all_people)
  Format.format_for_output(x)
  
  # puts "\nOutput 2:"
  # x = Sorter.sort_by_dob_ascending(all_people)
  # puts Format.new(x)

  # puts "\nOutput 3:"
  # all_people.sort_by_last_name_descending
  # puts z.format_for_output

end