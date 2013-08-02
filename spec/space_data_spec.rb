require 'space_data'

describe SpaceData do

	describe File do

		context "when instantiated, should create a file object"

			it "should create a new instance of SpaceData" do 
				infile = File.new('data/space.txt')
				infile.should be_an_instance_of File
			end
		end
	end