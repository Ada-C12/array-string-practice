
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  index = 0
  last_value = nil
  list.each do
    if list[index] == last_value
      list.delete_at(index)
    else
      last_value = list[index]
      index += 1
    end
  end
  return list
end

# Time Complexity: O(n * m), where n is the iteration over the unknown prefix variable, and m is the iteration over each object in the strings array
# Space Complexity: O(1)
def longest_prefix(strings)
  prefix = strings.first
  # iterates over the length of the first string
  prefix.length.times do |index|
    # character will progress with each iteration of times loop
    character = prefix[index]
    # compares all other strings in array to current prefix string
    strings.each do |string|
      # deletes character at current index through last character in prefix if current prefix index is no longer equal to string in current loop loop
      prefix.slice!(index..(string.length - 1)) if character != string[index]
    end
  end
  return prefix
end
