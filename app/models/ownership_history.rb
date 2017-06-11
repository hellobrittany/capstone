class OwnershipHistory < ApplicationRecord
	belongs_to :application 
	has_many :owned_pets
end
