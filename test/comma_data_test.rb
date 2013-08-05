require 'test/unit'
require 'shoulda'

class CommaDataTest < Test::Unit::TestCase
	
	should "open the file" do 
  	file = File.new("test/fixtures/comma.txt", 'r')
  	assert file
  end

  should "return elements of the file object" do 
  	file = File.new("test/fixtures/comma.txt", 'r')
  	assert_equal("Abercrombie, Neil, Male, Tan, 2/13/1943\n", file.first)
  end

end
