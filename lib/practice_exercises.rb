
# Time Complexity: ?
# Space Complexity: ?
def remove_duplicates(list)
  first = 0
  second = first + 1
  
  while second <= list.length - 1
    if list[second] == list[first]
      list.delete_at(list.index(second))
    else
      first = first + 1
      second = first + 1
    end
  end
  return list
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  prefix = ""
  array_length = strings.length
  
  # array_iterator = 0
  # string_iterator = 0
  # 
  # while array_iterator is less than array length - 1
  # if array[array_iterator][string_iterator] is equal to array[array_iterator + 1][string_iterator]
  # array_iterator += 1 
  #
  
end

