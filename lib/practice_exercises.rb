
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  index = 0
  prev_num = 0
  list.length.times do
    item = list[index]
    if index == 0
      prev_num = item
      index += 1
    else
      if item == prev_num
        list.delete_at(index)
      else
        index += 1
        prev_num = item
      end
    end
  end
  return list
end

# Time Complexity: O(a * b) where a is the number of letters in the first word, and b is the number of words in the array
# Space Complexity: O(1)
def longest_prefix(strings)
  longest_prefix = ""
  num_letters = strings[0].length
  
  num_letters.times do |i|
    status = true
    check_letter = strings[0][i]
    strings.each do |string|
      if string[i] != check_letter
        status = false
      end
    end
    if status == true
      longest_prefix += check_letter
    end
  end
  
  return longest_prefix
end

