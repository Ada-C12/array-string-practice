
# Time Complexity: O(n)
# Space Complexity: O(1)
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

# Time Complexity: O(m * n) / run time is based upon array size and the length of the shortest element
# Space Complexity: O(1) / the same set of variables are used regardless of the size of the input array. 
def longest_prefix(strings)
  prefix = ""
  array_length = strings.length
  array_iterator = 0
  string_iterator = 0
  
  while (array_iterator < array_length - 1) && (strings[array_iterator][string_iterator] && strings[array_iterator + 1][string_iterator] != nil)
    if strings[array_iterator][string_iterator] == strings[array_iterator + 1][string_iterator]
      array_iterator = array_iterator + 1
      if array_iterator == array_length - 1
        prefix = prefix + (strings[array_iterator][string_iterator])
        string_iterator = string_iterator + 1
        array_iterator = 0
      end
    else
      return prefix
    end
  end
  return prefix
end

