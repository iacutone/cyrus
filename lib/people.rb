require 'date'

class Person 
	attr_accessor :first_name, :middle_initial, :last_name, :gender, :color, :dob

	def initialize
		@last_name = last_name 
		@first_name = first_name
		@middle_initial = middle_initial 
		@gender = gender 
		@dob = dob
		@color = color
	end

	def standardize_gender
		if 
			self.gender == 'm' || 'male'
			self.gender = 'Male'
		elsif 
			self.gender == 'f' || 'female'
			self.gender = 'Female' 
		end
	end

	def standardize_dob
		standard_date = []
		date = self.dob.split(/(?:\/|-)/).map { |item| item.to_i }
		standard_date = Date.new(date[2], date[0], date[1])
		self.dob = standard_date.strftime("%m/%d/%Y")
	end
end