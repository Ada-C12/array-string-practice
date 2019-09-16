
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  if list.length == 0
    return 0
  end
  unique_items = 1
  list.length.times do |index|
    if index != 0 && list[index - 1] != list[index]
      unique_items +=1
    end
  end
  return unique_items
end

# Did not have time to complete all the way

# Time Complexity: O(n^2)
# Space Complexity: O(n) 
def longest_prefix(strings)
  prefix_string = ""
  strings.first.length.times do |index|
    string.each do |string|
      string[index]
    end
    return prefix_string
  end
end

