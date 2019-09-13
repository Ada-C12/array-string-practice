
# Time Complexity: ?
# Space Complexity: ?
def remove_duplicates(list)
  i = 0
  while i < list.length
    list.delete_at(i + 1) while list[i] == list[i + 1]
    i += 1
  end
  return list
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  # remove_duplicates
end

