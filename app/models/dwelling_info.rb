class DwellingInfo < ApplicationRecord
	belongs_to :application

	validates :application_id, uniqueness: true

	enum who_has_yard_access: [:poolman, :gardner, :utility, :neighbor, :other]

end
