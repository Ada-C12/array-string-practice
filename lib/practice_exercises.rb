
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  # raise NotImplementedError, "Not implemented yet"
  return nil if list.nil?
  return list if list.empty?
  i = 0
  j = 0
  largest_num = list[i]
  final_largest_num = list.last
  until largest_num == final_largest_num
    if list[i] <= list[j] && list[j] > largest_num
      i += 1 if i == 0
      temp = list[i]
      list[i] = list[j]
      list[j] = temp
      largest_num = list[i]
      i += 1
      j += 1
    else
      j += 1 if j < list.length - 1
    end
  end
  return list[0..(i-1)] if i > 1
  return [list[0]] if i == 0
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

