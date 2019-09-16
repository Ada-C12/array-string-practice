# Time Complexity: The time complexity is O(n) because the algorithms time varies linearly with the length of the list array.
# Space Complexity: O(n) where n is the length of the array. The space complexity varies with the length of the array.
def remove_duplicates(list)
  return list if list.length == 1 || list.length == 0
  
  list.length.times do |i|
    if list[i] == list [i - 1]
      list.delete_at(i)
    end
  end
  
  return list
end

# Time Complexity: The time complexity is O(nm) because in the worst case scenario the time that the algorithm takes can change linearly based on the length of the first string in the array passed AND the length of the array itself.
# Space Complexity: O(1) because the space complexity is constant even as the array and string sizes change.
def longest_prefix(strings)
  common_prefix = ""
  i = 0
  match = true
  
  while match == true
    value = strings[0][i]
    strings.each do |s|
      if s[i] != value || s[i] == nil
        match = false
      end
    end
    
    common_prefix += value if match == true
    i += 1
  end
  
  return common_prefix
end
