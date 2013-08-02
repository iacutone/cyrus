require 'comma_data'

describe CommaData do

	let(:comma) { FactoryGirl.create(:comma) }

	it "should create a new instance of CommaData" do 
		@comma = CommaData.new(:comma)
		comma.should be_an_instance_of CommaData
	end

	describe "#parse_file" do
		it 'should parse People objects'
			person = People.new
			person.last_name.should == @comma.last_name
	end

end
