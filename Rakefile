require './lib/comma'
require './lib/pipe'
require './lib/space'
require './lib/sorter'

task :render_people do

  commadata = CommaData.new('data/comma.txt')
  pipedata = PipeData.new('data/pipe.txt')
  spacedata = SpaceData.new('data/space.txt')

  commadata.parse_file
  pipedata.parse_file
  spacedata.parse_file

	sortable_data = Sorter.new(commadata, pipedata, spacedata)
  puts "Output 3"
  pp sortable_data.sort_by_last_name_descending

end