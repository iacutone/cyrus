require 'test/unit'
require 'shoulda'
require_relative '../lib/people'


class MergerTest < Test::Unit::TestCase

  should 'correctly parse pipe file' do

  	@pipe_holder = []

  	infile = File.new("test/fixtures/pipe.txt", 'r')
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
			@pipe_holder << person
		end

		assert_equal(3, @pipe_holder.size)
		assert(@pipe_holder.first.last_name == "Smith")
		assert(@pipe_holder.first.first_name == "Steve")
		assert(@pipe_holder.first.gender == "Male")
		assert(@pipe_holder.first.color == "Red")
		assert(@pipe_holder.first.dob == "3-3-1985")
	end

	should 'correctly parse space file' do

  	@space_holder = []

  	infile = File.new("test/fixtures/space.txt", 'r')
  		infile.each do |line|
			items = line.strip.split(' ')
			person = People.new
			person.last_name = items[0].strip
			person.first_name = items[1].strip
			person.middle_initial = items[2].strip
			person.gender = items[3].strip
			person.standardize_gender
			person.dob = items[4].strip
			person.color = items[5].strip
			@space_holder << person
		end

		assert_equal(3, @space_holder.size)
		assert(@space_holder.first.last_name == "Kournikova")
		assert(@space_holder.first.first_name == "Anna")
		assert(@space_holder.first.gender == "Female")
		assert(@space_holder.first.color == "Red")
		assert(@space_holder.first.dob == "6-3-1975")
	end

	should 'correctly parse comma file' do

  	@comma_holder = []

  	infile = File.new("test/fixtures/comma.txt", 'r')
  		infile.each do |line|
			items = line.strip.split(',')
			person = People.new
			person.last_name = items[0].strip
			person.first_name = items[1].strip
			person.gender = items[2].strip
			person.standardize_gender
			person.color = items[3].strip
			person.dob = items[4].strip
			@comma_holder << person
		end

		assert_equal(3, @comma_holder.size)
		assert(@comma_holder.first.last_name == "Abercrombie")
		assert(@comma_holder.first.first_name == "Neil")
		assert(@comma_holder.first.gender == "Male")
		assert(@comma_holder.first.color == "Tan")
		assert(@comma_holder.first.dob == "2/13/1943")
	end

end
