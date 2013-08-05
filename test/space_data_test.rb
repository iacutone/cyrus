require 'test/unit'
require 'shoulda'

class SpaceDataTest < Test::Unit::TestCase
	
	should "open the file" do 
  	file = File.new("test/fixtures/space.txt", 'r')
  	assert file
  end

  should "return elements of the file object" do 
  	file = File.new("test/fixtures/space.txt", 'r')
  	assert_equal("Kournikova Anna F F 6-3-1975 Red\n", file.first)
  end

end