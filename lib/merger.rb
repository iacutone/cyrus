require_relative './comma_data'
require_relative './pipe_data'
require_relative './space_data'

class Merger

	attr_reader :data

	def initialize
		@data = []
	end

	def merge_data
	  commadata = CommaData.new('data/comma.txt')
	  pipedata = PipeData.new('data/pipe.txt')
	  spacedata = SpaceData.new('data/space.txt')

	  commadata.parse_file
	  commadata.data.each do |person|
	    self.data << person
	  end

	  pipedata.parse_file
	  pipedata.data.each do |person|
	    self.data << person
	  end

	  spacedata.parse_file
	  spacedata.data.each do |person|
	    self.data << person
	  end
	end

end