class DwellingInfo < ApplicationRecord
	belongs_to :application

	validates :application_id, uniqueness: true
end
