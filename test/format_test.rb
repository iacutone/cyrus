require 'test/unit'
require 'shoulda'

class FormatTest < Test::Unit::TestCase
	
	should "format the data" do 
  	file = File.new("test/fixtures/comma.txt", 'r')
  	assert file
  end

end
