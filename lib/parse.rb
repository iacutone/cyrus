require 'pry'
require 'date'

class Parse

	def sortable_dob(array)
		array.each do |p|
			p.dob.split("/")
		end
			#convert to date object
	end
end