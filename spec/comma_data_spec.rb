require 'comma_data'
# require_relative './factories'

require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name 'John Doe'
    date_of_birth { 21.years.ago }
  end
end

user = FactoryGirl.build(:user, first_name: "Joe")
user.first_name.should == "Joe"

describe CommaData do

	describe File do

		context "when instantiated, should create a file object"

			it "should create a new instance of CommaData" do 
				infile = File.new('data/comma.txt')
				infile.should be_an_instance_of File
			end
	end

	describe People do

		# FactoryGirl.build(:comma) do |comma|
		# 	comma.last_name.should == "Abercrombie"
		# end


		# before do
  #       lib_obj = [
  #           People.new("JavaScript: The Good Parts", "Douglas Crockford", :development),
  #           People.new("Designing with Web Standards", "Jeffrey Zeldman", :design),
  #           People.new("Don't Make me Think", "Steve Krug", :usability)
  #       ]
  #    end

		# infile = File.new('data/comma.txt')

		# infile.each do |line|
		# 	items = line.strip.split(",")
		# 	person = People.new
		# 	items[0].strip.should == "Abercrombie"
			# items[1].strip.should == "Neil"
			# items[2].strip.should == "Male"
			# items[3].strip.should == "Tan"
			# items[4].strip.should == "2/13/1943"
		# end
	end

end
