require 'pry'
require_relative './comma'
require_relative './pipe'
require_relative './space'

class Sorter

	attr_accessor :data, :commadata, :pipedata, :spacedata

	def initialize(commadata)
		@commadata = commadata
	end

	def sort_by_dob_ascending
		self.commadata.each do |person_object|
			person_object.dob.sort_by
		end
	end

	def sort_by_gender_then_last_name
		
	end

	def sort_by_last_name_descending
		
	end


	comma = CommaData.new('data/comma.txt')
	comma.parse_file
	x = Sorter.new(comma)
	pipe = PipeData.new('data/pipe.txt')
	space = SpaceData.new('data/space.txt')
end