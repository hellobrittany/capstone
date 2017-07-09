


Dog.create!(
						name: "Frances", 
						identifier: "12345")

Dog.create!(
						name: "Poplolly", 
						identifier: "12346")

Dog.create!(
						name: "Wonk-E", 
						identifier: "12347")

Dog.create!(
						name: "DeDe", 
						identifier: "12348")

Dog.create!(
						name: "Superfly", 
						identifier: "12349")

Dog.create!(
						name: "Troy", 
						identifier: "12350")
Dog.create!(
						name: "Jack", 
						identifier: "12351")
Dog.create!(
						name: "Chloe", 
						identifier: "12352")
Dog.create!(
						name: "Magnus", 
						identifier: "12353")
Dog.create!(
						name: "Bacon", 
						identifier: "12354")

10.times do 
	first_name = Faker::Name.first_name
	User.create!(
							first_name: first_name,
							last_name: Faker::Name.last_name,
							email: first_name + '@gmail.com',
							address_1: Faker::Address.street_address,
							address_2: Faker::Address.secondary_address,
							city:  Faker::Address.city,
							state: Faker::Address.state,
							zip: Faker::Address.zip_code,
							phone: Faker::PhoneNumber.phone_number,
							spouse_name: Faker::Name.first_name,
							spouse_occupation: Faker::Pokemon.name,
							kids: [true, false].sample,
							dwelling_type: ['House', 'Apartment', 'Condo', 'Other'].sample,
							dwelling_owned: [true, false].sample,
							landlord_permission: [true, false].sample,
							landlord_name: ['Bob', 'Maria', 'Anton'].sample,
							landlord_phone: Faker::PhoneNumber.phone_number,
							password_digest: "password" 
							)
end

# 10.times do
# 	Application.create!(
# 											dog_id: rand(1..10),
# 											user_id: rand(1..10),
# 											status: "active"
# 											)

# 	i += 1

# end


# i = 1

# 6.times do
#   DwellingInfo.create!(
#                       application_id: i, 
#                       has_fencing: [true, false].sample,
#                       fence_highest_height: rand(60..84),
#                       fence_lowest_height: rand(36..59),
#                       has_gates: [true, false].sample,
#                       street_access: [true, false].sample,
#                       who_has_yard_access: ["poolman", "gardner", "utility", "neighbor", "other"].sample
#                       )
#   i += 1
# end

# 10.times do 
  
#   LifestyleInfo.create!(
#                         application_id: i, 
#                         allergies: [true, false].sample, 
#                         reason_companion: [true, false].sample, 
#                         reason_kids: [true, false].sample, 
#                         reason_gift: [true, false].sample, 
#                         reason_other_pet: [true, false].sample, 
#                         reason_watchdog: [true, false].sample, 
#                         home_during_day: [true, false].sample, 
#                         when_outside: ["Always", "Only under supervision", "While I'm at work", "For potty breaks and exercise"].sample, 
#                         hours_dog_left_alone: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample, 
#                         outside_areas: ['Fenced Yard', 'Enclosed Patio', 'Garage', 'Balcony', 'Dog House', 'Other', 'None'].sample, 
#                         preferred_level_of_exercise: ['Couch Potato', 'Short Walks', 'Vigorous Walks', 'Hike or Jog Regularly'].sample,
#                         type_of_dog_food: ['Grain free', 'Raw', 'Kibble', 'Whatever the vet recommends'].sample
#                         )
# end

# 10.times do



# 	OwnershipHistory.create!(
# 														application_id: i, 
# 														number_of_current_pets: [1, 2, 3, 4, 5, 6].sample, 
# 														allowed_breeding: [true, false].sample
# 														)

# 	i +=1
# end

# 10.times do

# 	OwnedPet.create!(
# 										ownership_history_id: i, 
# 										species: ['dog', 'cat'].sample, 
# 										breed: '', 
# 										current: [true, false].sample, 
# 										length_of_ownership: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample, 
# 										explanation: ['passed away of old age', 'gave away', 'had to put to sleep'].sample
# 										)
# 	i += 1
# end

# 10.times do
	
# 	OwnershipProfile.create!(
# 														application_id: i, 
# 														regular_vet: [true, false].sample,
# 														who_grooms: ["groomer", "me"].sample, 
# 														wears_collar: [true, false].sample, 
# 														experience_level: '', 
# 														discipline_style: ['yell', 'redirect from bad behavior and praise good behavior', 'ignore bad behavior'].sample, 
# 														training_obedience_class: [true, false].sample, 
# 														training_hit: [true, false].sample, 
# 														training_verbal: [true, false].sample, 
# 														training_clicker: [true, false].sample, 
# 														training_other: [true, false].sample, 
# 														dog_walk_style: ['on leash', 'off leash'].sample, 
# 														ready: [true, false].sample, 
# 														invested: [true, false].sample, 
# 														move_locally_plan: ['give dog away', 'keep, dog is part of the family'].sample,											  
# 														move_far_plan: ['give dog away', 'keep, dog is part of the family'].sample,
# 												   	move_internationally_plan: ['give dog away', 'keep, dog is part of the family'].sample,
# 												    gu_excessive_barking: [true, false].sample, 
# 												    gu_biting: [true, false].sample, 
# 												    gu_digging: [true, false].sample, 
# 												    gu_moving: [true, false].sample, 
# 												    gu_divorce: [true, false].sample, 
# 												    gu_poor_watchdog: [true, false].sample, 
# 												    gu_distructive: [true, false].sample, 
# 												    gu_financial: [true, false].sample, 
# 												    gu_accidents: [true, false].sample, 
# 												    gu_growls: [true, false].sample, 
# 												    gu_vet_bills: [true, false].sample, 
# 												    gu_shedding: [true, false].sample, 
# 												    gu_allergies: [true, false].sample, 
# 												    gu_new_partner: [true, false].sample, 
# 												    gu_aggressive: [true, false].sample, 
# 												    gu_other: [true, false].sample, 

# 														)
# 	i += 1
# end



























