require 'pry'
require_relative './comma'
require_relative './pipe'
require_relative './space'

class Sorter 

	attr_accessor :comma_data, :pipe_data, :space_data, :all_data

	def initialize(comma_data, pipe_data, space_data)
		@comma_data = comma_data
		@pipe_data = pipe_data
		@space_data = space_data
		@all_data = [comma_data, pipe_data, space_data]
		@data = []
	end

	def sort_by_dob_ascending
		@array = []
		self.all_data.each do |data_item|
			data_item.data.sort do |a, b|
				a.dob <=> b.dob
			end

			data_item.data.each do |person|
				# self.last_name = person.last_name
				# self.first_name = person.first_name
				@array << person.dob

				# person.color
				
			end

		end
	end

	def sort_by_gender_then_last_name
		self.all_data.each do |data_item|
			data_item.data.sort do |a, b|
				[a.gender, a.last_name] <=> [b.gender, b.last_name]
			end
		end
	end

	def sort_by_last_name_descending
		@test = []
		self.all_data.each do |a|
			@test << a
			
			a.data.map do |x|
			end
		end
	end
		# @array = []
		# self.all_data.each do |data_item|
		# 	data_item.data.sort do |a, b|
		# 		a.last_name <=> b.last_name
		# 	end

		# 	data_item.data.each do |person|
		# 		@array << person.last_name
				# @array << person.first_name
				# @array << person.dob
				# @array << person.color
		# 	end
		# end
	# end

	commadata = CommaData.new('data/comma.txt')
	pipedata = PipeData.new('data/pipe.txt')
	spacedata = SpaceData.new('data/space.txt')
	array = []
	array << commadata.parse_file
	array << pipedata.parse_file
	array << spacedata.parse_file

	sortable_data = Sorter.new(commadata, pipedata, spacedata)
	sortable_data.sort_by_dob_ascending
	sortable_data.sort_by_last_name_descending
	sortable_data.sort_by_gender_then_last_name
end

# class Merge

# 	def self.create_from_data(data)
#     record_objects = all_data.collect do |data_obj|
#       data_obj.parse_record_params.collect do |params|
#         Record.new(params)
#       end
#     end
#     record_objects.flatten
# 	end

# end
