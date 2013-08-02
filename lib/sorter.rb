require './lib/merger'

class Sorter

	def self.sort_by_gender_then_last_name(data_sort)
		data_sort.data.sort do |a, b|
			[a.gender, a.last_name] <=> [b.gender, b.last_name]
		end
	end

	def self.sort_by_dob_ascending(data_sort)
		data_sort.data.sort do |a, b|
			a.dob[-4..-1] <=> b.dob[-4..-1]
		end
		# data_sort.data.map(&:dob.to_i)
	end

	def self.sort_by_last_name_descending(data_sort)
		reverser = data_sort.data.sort_by(&:last_name)
		reverser.reverse
	end

end


