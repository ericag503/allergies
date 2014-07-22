def allergies(score)
  allergens = {
    "cats"   => 128,
    "pollen" => 64,
    "chocolate" => 32,
    "tomatoes" => 16,
    "strawberries" => 8,
    "shellfish" => 4,
    "peanuts" => 2,
    "eggs"   => 1
  }
  final_array = []

allergens.each do |allergy, value|
  if value <= score
    final_array << allergy
    score -= value
  end
end

final_array

end

puts allergies(16)

# puts allergies("shellfish strawberries")
# allergens.each do |allergy, value|
#   if (score - value >= 0)
#    final_array << allergy
#    score -= value
