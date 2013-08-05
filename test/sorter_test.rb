require 'test/unit'
require 'shoulda'
require_relative '../lib/people'
require_relative '../lib/merger'
require_relative '../lib/sorter'
require_relative '../lib/format'

class SorterTest < Test::Unit::TestCase
	
	should "sort the data by gender then by last name" do 
		result = "Hingis Martina Female 04/02/1979 Green \n Kelly Sue Female 07/12/1959 Pink \n Kournikova Anna Female 06/03/1975 Red \n Seles Monica Female 12/2/1973 Black \n Abercrombie Neil Male 2/13/1943 Tan \n Bishop Timothy Male 4/23/1967 Yellow \n Bonk Radek Male 6/3/1975 Green \n Bouillon Francis Male 6/3/1975 Blue \n Smith Steve Male 3/3/1985 Red"
  	all_people = Merger.new
  	all_people.merge_data
  	  sorted_data = Sorter.sort_by_gender_then_last_name(all_people)
  	  correct_format = Format.format_for_output(sorted_data).first
  	  assert(correct_format, result)
  end

  should "sort the data by dob ascending" do 
		result = "Abercrombie Neil Male 02/13/1943 Tan \n Kelly Sue Female 7/12/1959 Pink \n Bishop Timothy Male 4/23/1967 Yellow \n Seles Monica Female 12/2/1973 Black \n Bonk Radek Male 6/3/1975 Green \n Bouillon Francis Male 6/3/1975 Blue \n Kournikova Anna Female 6/3/1975 Red \n \n Hingis Martina Female 4/2/1979 Green \n Smith Steve Male 3/3/1985 Red"
  	all_people = Merger.new
  	all_people.merge_data
  	  sorted_data = Sorter.sort_by_gender_then_last_name(all_people)
  	  correct_format = Format.format_for_output(sorted_data).first
  	  assert(correct_format, result)
  end

  should "sort the data by last name descending" do 
		result = "Smith Steve Male 03/03/1985 Red \n Seles Monica Female 12/2/1973 Black \n Kournikova Anna Female 6/3/1975 Red \n Kelly Sue Female 7/12/1959 Pink \n Hingis Martina Female 4/2/1979 Green \n Bouillon Francis Male 6/3/1975 Blue \n Bonk Radek Male 6/3/1975 Green \n Bishop Timothy Male 4/23/1967 Yellow \n Abercrombie Neil Male 2/13/1943 Tan"
  	all_people = Merger.new
  	all_people.merge_data
  	  sorted_data = Sorter.sort_by_gender_then_last_name(all_people)
  	  correct_format = Format.format_for_output(sorted_data).first
  	  assert(correct_format, result)
  end

end
