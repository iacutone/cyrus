require 'test/unit'
require 'shoulda'
require_relative '../lib/people'

class PeopleTest < Test::Unit::TestCase
	
	should 'create a new person' do
	  person = People.new
	  assert person
	end

	should 'have person object attributes' do
	  person = People.new
	  assert_nil(person.last_name)
	  assert_nil(person.first_name)
	  assert_nil(person.dob)
	  assert_nil(person.color)
	  assert_nil(person.middle_initial)
	end

end
