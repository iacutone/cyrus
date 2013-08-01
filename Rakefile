require './lib/merger'
require './lib/sorter'
require './lib/format'

task :render_people do

	all_people = Merger.new
  all_people.merge_data

  puts "Output 1:"
  sorted_data = Sorter.sort_by_gender_then_last_name(all_people)
  Format.format_for_output(sorted_data)
  
  puts "\nOutput 2:"
  sorted_data = Sorter.sort_by_dob_ascending(all_people)
  Format.format_for_output(sorted_data)

  puts "\nOutput 3:"
  sorted_data = Sorter.sort_by_last_name_descending(all_people)
  Format.format_for_output(sorted_data)

end