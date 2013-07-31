require 'pry'
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
		if self.gender == "m"
			self.gender = "Male"
		elsif self.gender == "f"
			self.gender = "Female"
		end
	end

	def standardize_dob
		standard_date = []
		date = self.dob.split(/(?:\/|-)/).map { |item| item.to_i }
		standard_date = Date.new(date[2], date[0], date[1])
		self.dob = standard_date.strftime("%m/%d/%Y")
	end
end

class CommaData
	array = []
	infile = File.new('data/comma.txt', 'r')
	infile.each do |line|
		items = line.strip.split(',')
		p = Person.new
		p.last_name = items[0].strip
		p.first_name = items[1].strip
		p.gender = items[2].strip.downcase
		p.standardize_gender
		p.color = items[3].strip
		p.dob = items[4].strip
		p.standardize_dob
		array << p
	end
end

class PipeData
	array = []
	infile = File.new('data/pipe.txt', 'r')
	infile.each do |line|
		items = line.strip.split('|')
		p = Person.new
		p.last_name = items[0].strip
		p.first_name = items[1].strip
		p.middle_initial = items[2].strip
		p.gender = items[3].strip.downcase
		p.standardize_gender
		p.color = items[4].strip
		p.dob = items[5].strip
		p.standardize_dob
		array << p
		binding.pry
	end
end

class SpaceData

	array = []
	infile = File.new('data/space.txt', 'r')
	infile.each do |line|
		items = line.strip.split(' ')
		p = Person.new
		p.last_name = items[0].strip
		p.first_name = items[1].strip
		p.middle_initial = items[2].strip
		p.gender = items[3].strip.downcase
		p.standardize_gender
		p.dob = items[4].strip
		p.standardize_dob
		p.color = items[5].strip
		array << p
	end
end



