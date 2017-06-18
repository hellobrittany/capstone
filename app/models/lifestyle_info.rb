class LifestyleInfo < ApplicationRecord
	belongs_to :application 
	validates :application_id, uniqueness: true
	enum outside_areas: ['Fenced Yard', 'Enclosed Patio', 'Garage', 'Balcony', 'Dog House', 'Other', 'None']
	enum preferred_level_of_exercise: ['Couch Potato', 'Short Walks', 'Vigorous Walks', 'Hike or Jog Regularly']
end
