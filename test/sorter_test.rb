require 'test/unit'
require 'shoulda'

class SorterTest < Test::Unit::TestCase
	
	should "sort the data" do 
  	file = File.new("test/fixtures/comma.txt", 'r')
  	assert file
  end

end
