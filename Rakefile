task :render_people do
	data = [  Person.new,
			binding.pry,
            PipeData.new("data/pipe.txt"),
            SpaceData.new("data/space.txt")  ]
            binding.pry
  records = RecordFactory.create_from_data(data)
  record_displayer = RecordDisplayer.new(records)
  puts "Output 1:"
  puts record_displayer.display_by_gender_then_last_name
  puts "\nOutput 2:"
  puts record_displayer.display_by_dob
  puts "\nOutput 3:"
  puts record_displayer.display_by_desc_last_name
	
end