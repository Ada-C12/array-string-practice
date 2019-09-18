
# Time Complexity: ? O(n) where n corresponds with the length of input array
# Space Complexity: ? O(1) not creating any additional space in memory here, just deleting in place

def remove_duplicates(list)
  if list.empty? || list.length == 1 
    return list
  else
    i = 0
    j = 1
    until  list[j] == nil
      if list[i] == list[j]
        list.delete_at(i)
      end
      i += 1
      j += 1
    end
    return list
    # raise NotImplementedError, "Not implemented yet"
  end
end

# time complexity: ?
# Space Complexity: ?


def longest_prefix(strings)
  a = ""
  collection_of_letters = strings.first[0]
  j = 0
  strings.each_with_index do |string, i|
    return a if string[i][j] != collection_of_letters
    if j == strings.length
      a << string[i][j]
    end
    j += 1
  end
  return a
  raise NotImplementedError, "Not implemented yet"
end


