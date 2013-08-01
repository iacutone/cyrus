class Format

	# def initialize
	# 	@people = []
	# end

	@array = []

	def self.format_for_output(data)
		data.each do |person|
			@array << person.last_name
			@array << person.first_name
			@array << person.gender
			@array << person.dob
			@array << person.color
			@array.to_s.gsub(',', ' ')
			binding.pry
		end

	end


end