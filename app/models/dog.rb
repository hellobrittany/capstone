class Dog < ApplicationRecord
	has_one :application 

	# validates :application_id, uniqueness: true

end
