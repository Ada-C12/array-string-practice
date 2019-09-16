
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

# Did not have time to complete

# Time Complexity: ?
# Space Complexity: ?
# def longest_prefix(strings)
#   raise NotImplementedError, "Not implemented yet"
# end

