
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  # raise NotImplementedError, "Not implemented yet"
  return nil if list.nil?
  return list if list.empty?
  i = 0
  j = 0
  until j == list.length
    if list[i] < list[j]
      temp = list[i + 1]
      list[i + 1] = list[j]
      list[j] = list[i + 1]
      i += 1
    end
    j += 1
  end
  return list[0..i]
end


# Time Complexity: O(n2)
# Space Complexity: O(1)
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  prefix = ""
  return prefix if strings.empty?
  first_string = strings.first
  first_string.length.times do |i|
    char = first_string[i]
    strings.each_with_index do |string, index|
      break if string[i].nil? || string[i] != char
      prefix += string[i] if index == (strings.length - 1) && i == 0
      prefix += string[i] if index == (strings.length - 1) && prefix != "" && i > 0
    end
  end
  return prefix
  
end

