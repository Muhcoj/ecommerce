FactoryGirl.define do
	sequence :email do |n|
    	"person#{n}@example.com"
  	end
	factory :user do
		email
	    password "1234567890"
	    first_name "Peter"
	    last_name "Example"
	    admin false
	end
end