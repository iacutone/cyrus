require_relative './factories'
require 'factory_girl'
require 'comma_data'


describe CommaData do

	describe File do

		it "should create a new instance of CommaData" do 
			infile = File.new('spec/fixtures/comma.txt')
			infile.should be_an_instance_of File
		end

	end

	describe People do

		before do
	    @person = People.new
	  end

	  subject { @person }

    it { should respond_to(:last_name) }
    it { should respond_to(:first_name) }
    it { should respond_to(:gender) }
    it { should respond_to(:color) }
    it { should respond_to(:dob) } 

	# 	describe "when last_name is not present" do
	#     before { @person.last_name = " " }
	#     it { should_not be_nil }
 #  	end

 #  	describe "when first_name is not present" do
	#     before { @person.first_name = " " }
	#     it { should_not be_nil }
 #  	end

 #  	describe "when gender is not present" do
	#     before { @person.gender = " " }
	#     it { should_not be_nil }
 #  	end

 #  	describe "when color is not present" do
	#     before { @person.color = " " }
	#     it { should_not be_nil }
 #  	end

 #  	describe "when dob is not present" do
	#     before { @person.dob = " " }
	#     it { should_not be_nil }
 #  	end
	# end

	describe "#parse_file" do

	 	let(:file_path) { "spec/fixtures/comma.txt" }
	  let(:raw_data) { File.new(file_path, 'r') }
	  let(:comma_data) { CommaData.new(file_path) }
	end	

end
