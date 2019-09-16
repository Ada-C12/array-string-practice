
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def remove_duplicates(list)
  i = 1
  list.each do |character|
    if character == list[i]
      list.delete_at(i)
    end
    i += 1
  end
  return list
end

# Time Complexity: O(n^2)
# Space Complexity: 0(1)
def longest_prefix(strings)
  max_prefix = strings.min
  max_length = max_prefix.length
  strings.each do |string|
    while string[0..max_length - 1] != max_prefix[0..max_length - 1]
      max_length -= 1
    end
  end
  prefix = max_prefix[0..max_length - 1]
end
