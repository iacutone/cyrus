require 'pry'
require_relative './people'

class SpaceData

	attr_accessor :data, :file

	def initialize(file)
		@file = file
		@data = []
	end

	def parse_file
		infile = File.new('data/space.txt', 'r')
		infile.each do |line|
			items = line.strip.split(' ')
			person = People.new
			person.last_name = items[0].strip
			person.first_name = items[1].strip
			person.middle_initial = items[2].strip
			person.gender = items[3].strip
			person.standardize_gender
			person.dob = items[4].strip
			person.standardize_dob
			person.color = items[5].strip
			self.data << person
		end
	end
end
