
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  new_array = []
    list.each do  |i|   
    unless new_array[-1] == i
      new_array << i
    end
  end
  return new_array 
end

# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  min = strings.min 
  max = strings.max
  string_pre = min.size.times do |i| 
    break i if min[i] != max[i]
  end
  min[0...string_pre]
end

