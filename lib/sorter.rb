require 'pry'
require './lib/merger'

class Sorter

	def self.sort_by_gender_then_last_name(data)
		data.data.sort do |a, b|
			[a.gender, a.last_name] <=> [b.gender, b.last_name]
		end
	end

	def self.sort_by_dob_ascending(data)
		data.data.sort do |a, b|
			[a.dob] <=> [b.dob]
			binding.pry
		end
	end

	def self.sort_by_last_name_descending(data)
		reverser = data.data.sort_by(&:last_name)
		reverser.reverse
	end

end


