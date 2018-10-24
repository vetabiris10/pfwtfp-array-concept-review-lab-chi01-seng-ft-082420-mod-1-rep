require 'spec_helper'
# Question 1
# Write a method that finds the max
describe "#using_max" do 
  it "finds the highest number in the array" do 
    my_array = [1, 3, 5, 7, 9, 12, 7000, 97129385, 6, 8, 357, 0]
    expect(using_max(my_array)).to eq(97129385)
  end
end

# Question 2
# Write a method that finds the nth element in a nested array
describe "#find_nth_element" do
  it "find Nemo in the nested array" do
    my_array = [
      ["Wreck-It Ralph", ["Ralph", "Penelope", "King Candy"]],
      ["Finding Nemo", ["Dory", "Nemo",  "Marlin"]],
      ["Monsters, Inc.", ["Mike", "Sulley", "Boo"]]
    ]
    expect(find_nth_element(my_array)).to eq("Nemo")
  end
end

# Question 3
# Write a method that flattens a nested array
describe "#flatten_nested_arrays" do
  it "flattens nested arrays" do
    my_array = [
      ["Wreck-It Ralph", ["Ralph", "Penelope", "King Candy"]],
      ["Finding Nemo", ["Dory", "Nemo",  "Marlin"]],
      ["Monsters, Inc.", ["Mike", "Sulley", "Boo"]]
    ]
    expect(flatten_nested_arrays(my_array)).to eq(["Wreck-It Ralph", "Ralph", "Penelope", "King Candy", "Finding Nemo", "Dory", "Nemo", "Marlin", "Monsters, Inc.", "Mike", "Sulley", "Boo"])
  end
end

# Question 4
# Write a method that uses the previous method to flatten the nested array, then sort it alphabetically
describe "#flatten_then_sort" do
  it "flattens the nested array, and then returns the previous array sorted alphabetically" do
    my_array = [
      ["Wreck-It Ralph", ["Ralph", "Penelope", "King Candy"]],
      ["Finding Nemo", ["Dory", "Nemo",  "Marlin"]],
      ["Monsters, Inc.", ["Mike", "Sulley", "Boo"]]
    ]
    expect(flatten_nested_arrays(my_array)).to eq(["Boo", "Dory", "Finding Nemo", "King Candy", "Marlin", "Mike", "Monsters, Inc.", "Nemo", "Penelope", "Ralph", "Sulley", "Wreck-It Ralph"])
  end
end