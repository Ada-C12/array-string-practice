
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  i = 0
  list.length.times do
    if list[i] == list[i + 1]
      list.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
  return list
end

# Time Complexity: although there is a loop within a loop, I don't think it's quadratic 
# because adding a word to the strings array doesn't mean doubling the total operations 
# ... so I'm going to go with good old O(n)
# Space Complexity: O(1)

def longest_prefix(strings)
  prefix = ""
  i = 0
  
  # go through the array of words, and for each letter in the first word ...
  while i < strings[0].length
    # assign the letter at index[i] to variable "letter"
    letter = strings[0][i]
    # create counter for matching letters
    matches = 0
    # now, for each of the words in the strings array ...
    strings.each do |string|
      # if the letter at the first word's index[i] matches the letter at index[i] in the word being compared ...
      if letter == string[i]
        # ... increment the matches counter
        matches += 1
      end
    end
    
    # if the number of matches equals the number of words in the array
    if matches == strings.length
      # ... add the letter to the "longest prefix" variable
      prefix += letter
    else
      # otherwise, stop the loop
      break
    end
    
    # increment the index
    i += 1
  end
  
  return prefix
  
end

