FactoryGirl.define do 
	factory :user do
		name       			  "Grisha Rozhnov"
		email      			  "grozhnov@example.com"
		password   			  "foobar"
		password_confirmation "foobar"
	end
end