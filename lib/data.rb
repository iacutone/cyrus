require 'pry'
require_relative './people'


class CommaData
	hash = {}
	infile = File.new('data/comma.txt', 'r')
	infile.each do |line|
		items = line.strip.split(',')
		person = Person.new
		binding.pry
		person.last_name = items[0].strip
		person.first_name = items[1].strip
		person.gender = items[2].strip.downcase
		person.standardize_gender
		person.color = items[3].strip
		person.dob = items[4].strip
		person.standardize_dob
		hash << person
	end
end

class PipeData
	array = []
	infile = File.new('data/pipe.txt', 'r')
	infile.each do |line|
		items = line.strip.split('|')
		person = Person.new
		person.last_name = items[0].strip
		person.first_name = items[1].strip
		person.middle_initial = items[2].strip
		person.gender = items[3].strip.downcase
		person.standardize_gender
		person.color = items[4].strip
		person.dob = items[5].strip
		person.standardize_dob
		array << person
	end
end

class SpaceData
	array = []
	infile = File.new('data/space.txt', 'r')
	infile.each do |line|
		items = line.strip.split(' ')
		person = Person.new
		person.last_name = items[0].strip
		person.first_name = items[1].strip
		person.middle_initial = items[2].strip
		person.gender = items[3].strip.downcase
		person.standardize_gender
		person.dob = items[4].strip
		person.standardize_dob
		person.color = items[5].strip
		array << person
	end
end



