
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  list.length.times do |i|
    if list[i] == list[i + 1]
      list.delete_at i + 1
    end
  end
  list
end


# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

