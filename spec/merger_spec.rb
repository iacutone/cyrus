require 'merger'

describe Merger do
	let(:comma) { FactoryGirl.build(:comma) }
	
	it "should create a new instance of CommaData" do 
		comma = CommaData.new(:comma)
		comma.should be_an_instance_of CommaData
	end

end