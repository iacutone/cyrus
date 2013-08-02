Factory.define do
  factory :comma do
    last_name     "Abercrombie"
    first_name    "Neil"
    gender				"Male"
    color					"Tan"
    dob 					"2/13/1943"
  end
end


# Bishop, Timothy, Male, Yellow, 4/23/1967
# Kelly, Sue, Female, Pink, 7/12/1959

FactoryGirl.define do
  factory :pipe do
    last_name     	"Smith"
    first_name    	"Neil"
    middle_initial	"D"
    gender					"M"
    color						"Red"
    dob 						"3-3-1985"
  end
end

# Bonk | Radek | S | M | Green | 6-3-1975
# Bouillon | Francis | G | M | Blue | 6-3-1975

FactoryGirl.define do
  factory :space do
    last_name     	"Kournikova"
    first_name    	"Anna"
    middle_initial	"F"
    gender					"F"
    color						"Red"
    dob 						"6-3-1975"
  end
end

# Hingis Martina M F 4-2-1979 Green
# Seles Monica H F 12-2-1973 Black