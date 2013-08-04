require 'merger'

describe Merger do

	it "should create a new instance of CommaData" do 
		comma = CommaData.new(:file)
		comma.should be_an_instance_of CommaData
	end

end