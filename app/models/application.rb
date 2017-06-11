class Application < ApplicationRecord
	belongs_to :user
	belongs_to :dog
	has_one :dwelling_info
	has_one :lifestyle_info
	has_one :ownership_history
	has_one :ownership_profile
	has_many :owned_pets, through: :ownership_history

end
