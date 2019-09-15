
# Time Complexity: O(n²)
  #We only go through the list once without an inner loop, so I thought it was O(n) at first.
  #But because I am including a 'delete_at' method, which I looked up the time complexity of and found O(n), I'm implementing another command for the algorithm to do, which is determined by O of n amount of times. 
  #Therefore I'm assuming it is O of n squared.
# Space Complexity: O(1)
def remove_duplicates(list)
  length = list.length
  i = 0
  while i < length - 1
    if list[i] == list[i + 1]
      list.delete_at(i + 1)
    end 
    i += 1
  end 
  return list 
end

# Time Complexity: O(n²)
# Space Complexity: O(n*m)
def longest_prefix(strings)
  first_string = strings[0].chars #an array of all the characters of the first string 
  matches = 0 

  #iterate over every letter of the first string
  first_string.each_with_index do |char, index|
    #iterate over every string to check if each string matches first strings letter
    break if strings[1..-1].any?{|string| string[index] != char}
      matches += 1 
  end 
  #modify the first string that we compared all the other strings to 
  #only keep the letters of the first string that matched all the strings
  prefix = first_string.slice(0,matches)
  return prefix.join('')
end 

#Could be refactored to compare all words to the shortest length word of the array rather than the first word- 
#If the first word also happens to be the longest word, I think it will end up comparing against nil a few times?