require 'pry'
require_relative './data'

class Parser
	attr_accessor :first_name, :last_name, :gender, :color, :dob

	def initialize(attributes = {})
		@last_name = attributes[:last_name] 
		@first_name = attributes[:first_name]
		@gender = attributes[:gender]  
		@dob = attributes[:dob] 
		@color = attributes[:color]
	end

	def sort_by_dob_ascending
		self.dob.sort
	end

	def sort_by_gender_then_last_name
		
	end

	def sort_by_last_name_descending
		
	end

	comma = CommaData.new
	x = Parser.new(comma)
	binding.pry
	pipe = PipeData.new
	space = SpaceData.new
end