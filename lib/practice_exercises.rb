# Time Complexity: (On)
# Space Complexity: O(1)
def remove_duplicates(list)
  index = 0
  length = list.length

  while index < length do
    while list[index] == list[index + 1] do
      list.delete_at(index + 1)
      length -= 1
    end
    index += 1
  end
  return list
end

# Time Complexity: O(n)
# Space Complexity: O(n)
def longest_prefix(strings)
  tracker = strings[0]
  matched_prefix = ""

  if strings.length == 0 
    return ""
  end
  index = 0

 while index < tracker.length-1
    if strings.all? { |string| string[index] == tracker[index] }
      matched_prefix += tracker[index]
    else
      break
    end 
    index += 1
  end

  return matched_prefix
end










