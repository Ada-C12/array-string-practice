
# Time Complexity: ?
# Space Complexity: ?
def remove_duplicates(list)
  new_array = []
    list.each do  |i|   
    unless new_array[-1] == i
      new_array << i
    end
  end
  return new_array 
end

# # Time Complexity: ?
# # Space Complexity: ?
# def longest_prefix(strings)
#   raise NotImplementedError
# end

# list = []
#   list.each do |e|
#     unless e == list.include?(e)
#       new_array << e
#     end

# list.each do |i|
#   count = 0 
#   if list[count] == list[i+1]
#     count += 1
#   end
# end