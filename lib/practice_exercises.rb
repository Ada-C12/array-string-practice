
# Time Complexity: O(n)
# Space Complexity: O(n)
def remove_duplicates(list)
  item_list = []
  list.each_with_index do |item|
    if item_list.include?(item) == false
      item_list << item
    end
  end
  return item_list
end

# Time Complexity: O(n2)
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  count = 0
  check = true
  continue = true
  strings[0].each_char do |character|
    letter = character
    strings.each do |string|
      if string[count] != letter
        continue = false
        break
      end
    end
    if continue == false
      break
    end
    count +=1
  end
  if count == 0
    return prefix
  end
  return prefix = strings[0][0..count-1]
end






