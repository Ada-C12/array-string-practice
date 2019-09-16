
# Time Complexity: O(n) where n is the sorted array
# Space Complexity: O(1)
def remove_duplicates(list)
  counter = 0
  list.length.times do |num|
    if list[counter] == list[counter + 1]
      list.delete_at(counter + 1)
    else  
      counter += 1
    end
  end
  return list
end

# Time Complexity: O(n) where n is the strings array
# Space Complexity: O(1)
def longest_prefix(strings)
  longest_prefix = strings[0]
  strings.each do |string|
    letter_counter = 0
    longest_prefix.length.times do
      if longest_prefix[letter_counter] == string[letter_counter]
        letter_counter += 1
      else 
        longest_prefix = longest_prefix.slice(0, letter_counter)
        break
      end
    end
  end
  return longest_prefix
end


