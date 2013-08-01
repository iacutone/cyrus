class Format

	@array = []

	def self.format_for_output(data)
		data.each do |person|
			puts person.last_name + ' ' + person.first_name + ' ' + person.gender + ' ' + person.dob + ' ' + person.color
		end

	end

end