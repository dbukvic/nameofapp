FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
		email
		password "blueberry"
		first_name "Andrew"
		last_name "Ellerhorst"
		admin false
  	end

  	factory :admin, class: User do
  		email
  		password "orange"
  		admin true
  		first_name "Admin"
  		last_name "User"
  	end

end