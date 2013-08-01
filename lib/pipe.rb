require 'pry'
require_relative './people'

class PipeData

	attr_accessor :data, :file

	def initialize(file)
		@file = file
		@data = []
	end

	def parse_file
		infile = File.new(self.file, 'r')
		infile.each do |line|
			items = line.strip.split('|')
			person = People.new
			person.last_name = items[0].strip
			person.first_name = items[1].strip
			person.middle_initial = items[2]
			person.gender = items[3].strip
			person.standardize_gender
			person.color = items[4].strip
			person.dob = items[5].strip
			person.standardize_dob
			self.data << person
		end
	end
end