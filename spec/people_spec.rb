require 'people'

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
end