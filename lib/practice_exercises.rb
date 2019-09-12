
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  # raise NotImplementedError, "Not implemented yet"
  return nil if list.nil?
  return list if list.empty?
  
  length = list.length
  i = 0
  j = length - 1
  
  until i >= j
    if list[i] == list[i + 1]
      temp = i 
      list[i] = list[j]
      list[j] = list[temp]
      j -= 1
    end
    i += 1
  end
  
  return list[0..j].sort
  
end


# Time Complexity: O(n2)
# Space Complexity: O(1)
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  prefix = ""
  first_string = strings.first
  first_string.length.times do |i|
    char = first_string[i]
    strings.each do |string|
      break if string[i].nil? || string[i] != char
      prefix += string[i] if string == strings.last
    end
  end
  
  return prefix
  
end

