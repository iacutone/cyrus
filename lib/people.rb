class People 
	attr_accessor :first_name, :middle_initial, :last_name, :gender, :color, :dob

	def standardize_gender
		if 
			self.gender == 'M' 
			self.gender = 'Male'
		elsif 
			self.gender == 'F' 
			self.gender = 'Female' 
		end
	end

	def standardize_dob
		date = self.dob.split(/(?:\/|-)/).map { |item| item.to_i }
		standard_date = Date.new(date[2], date[0], date[1])
		self.dob = standard_date.strftime("%m/%d/%Y")
	end
	
end