class OwnershipHistory < ApplicationRecord
	belongs_to :application 
	has_many :owned_pets
	validates :application_id, uniqueness: true
end
