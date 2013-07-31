require 'spec_helper'

describe 'Person' do

	before do
		@person = Person.new(last_name: '', first_name: '', gender: '', color: '', dob: '')
	end

	subject { @person }

	it { should respond_to(:last_name) }
  it { should respond_to(:first_name) }
  it { should respond_to(:gender) }
  it { should respond_to(:color) }
  it { should respond_to(:dob) }
	
	it "instantiates a new Person object" do
		new_user = Person.create!(first_name: "Andy", last_name: "Lindeman")
	end
end