
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def remove_duplicates(list)
  list_length = list.length
  list_length.times do |i|
    if list[i] == list[i + 1]
      list.delete_at(i)
    end
  end
  list
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  min = strings[0]

  new_strings = strings - [min]

  new_strings.each do |string|
    string.length.times do |i|
      if min[i] != string[i]
        counter = i - 1
        if i > 0
          min = min[0..counter]
        else
          min = ""
        end
      end
    end
  end

  return min
end
