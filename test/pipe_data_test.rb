require 'test/unit'
require 'shoulda'

class PipeDataTest < Test::Unit::TestCase
	
	should "open the file" do 
  	file = File.new("test/fixtures/pipe.txt", 'r')
  	assert file
  end

  should "return elements of the file object" do 
  	file = File.new("test/fixtures/pipe.txt", 'r')
  	assert_equal("Smith | Steve | D | M | Red | 3-3-1985\n", file.first)
  end

end