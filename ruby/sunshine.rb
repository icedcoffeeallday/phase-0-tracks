puts "One final thing! Do you have any allergies? Please list them one-by-one, and type 'done' when your list is finished."
allergies = 0
until allergies == "done"
  allergies = gets.chomp
  if (allergies == 'sunshine' || allergies == 'Sunshine')
    sunshine_allergy = true
  else
    sunshine_allergy = false
end
end
p allergies
p sunshine_allergy