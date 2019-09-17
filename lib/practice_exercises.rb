
# Time Complexity: O(n) n being all elements in the list. They are get iterated through
#compared. 
# Space Complexity: ?Would be O(1) the space stays the same throughout. No new arrays 
# are created

#compare the first number to all numbers until you reach a num thats not equal
#Then replace taht first num with num that is different, and add to the counter
#Once you reach the end of the array return the counter.


def remove_duplicates(list)
  if list.length == nil
    return []
  elsif list[0] == []
    return []
  end
  
  compare_to = list[0]
  i = 0
  counter = 0
  
  while list.length >= i
    if compare_to == list[i]
      list.delete_at(list[i])
    elsif compare_to != list[i]
      counter += 1
      compare_to = list[i]
    end
    i += 1
  end
  return list
end


# Time Complexity: O(n^2)Each word gets iterated through and every letter in the word
# gets iterated through. 
# Space Complexity: No new Array is crated except common word. 
def longest_prefix(strings)

  common_word = ""
  strings.each_with_index do |word, index|
    if strings[0][index] == word[index]
      common_word += word[index]
    else
      return common_word
    end
  end
 return common_word
end


# i = 0
# common_word = ""
# #while array[0].length >= 0
# array.each_with_index do |word, index|
#   if array[0][i] == word[i]
#     common_word += array[0][i]
#     i +=1
#   else
#     puts common_word
#   end
# end
# puts "here #{common_word}"



# i = 1
# counter = 1
# compare = strings[0]
# while strings.length >= i 
#   if compare[0..counter] != strings[i][0..counter]
#     return ""
#   else
#     i += 1
#   end
# end
# return compare[0..1]