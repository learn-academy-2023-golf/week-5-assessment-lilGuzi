# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# declares a variable that holds an array of taco votes
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']
# declares a variable that takes in the array of taco votes and itterates through each element in the array and gathers a value. creates a list taht can hold pairs of values and starts the value at 0
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
# accesses each specific taco type in the list and the value in that list and turns the taco type to lower case then adds 1 to the total votes of that type of taco type
  result[vote.downcase] += 1
# returns the list of taco types with the total count of how many votes each specific taco type has.
  result
end
#runs through and prints the result of the totals method
p totals