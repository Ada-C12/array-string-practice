# I decided not to use this one because
# I think `delete_at` is O(n),
# thereby making this function O(n^2),
# which is not very efficient.

# def remove_duplicates(list) # O(n * n) => O(n^2)
#   # exits if list is too short to have duplicates or is nil
#   if list.length < 1 || list.nil?
#     return list
#   end
#   # for every member of the list after the first,
#   for i in 0...list.length # O(n)
#     # if that member is the same as the member after
#     if list[i] == list[i + 1] 
#       # delete that member
#       list.delete_at(i) # O(n)
#     end
#   end
#   return list
# end


# I decided not to use this one because `delete`
# is effectively doing a `delete_at_` within a loop,
# so it is not more efficient than using `delete_at`.

# def remove_duplicates(list) # O(n + n^2) => O(2n^2) => O(n^2)
#   # exits if list is too short to have duplicates or is nil
#   if list.length < 1 || list.nil?
#     return list
#   end

#   # for every member of the list after the first,
#   for i in 0...list.length # O(n)
#     # if that member is the same as the member after it
#     if list[i] == list[i + 1] 
#       # make that member nil
#       list[i] = nil
#     end
#   end

#   # delete all occurences of `nil`
#   list.delete(nil) # O(n^2)

#   # return the list
#   return list
# end


# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list) # O(n) + (O(n) * O(1)) => O(n)
  # exits if list is too short to have duplicates or is nil
  if list.length <= 1 || list.nil?
    return list
  end
  
  # `temp` is spot to compare
  temp = 0
  # `i` is current spot
  # for every member of the list after the first,
  for i in 1...list.length # O(n)
    # if that member is different from the member before it
    if list[i] != list[temp]
      # and `i` is ahead of `temp` by more than one
      if (i - temp) > 1
        # shift the current thing
        # to the spot directly after temp
        # which we know is a duplicate of temp
        temp += 1
        list[temp] = list[i]
      else # elsif `i` is ahead of `temp` by only one
        # move temp up
        temp = i
      end
    end
    # find the difference between `temp` and `i`
    differences = (i - temp)
  end
  
  # for every difference between `temp` and `i`,
  # delete the last member of the array
  differences.times do # O(n)
    list.pop() # O(1)
  end
  
  return list
end


# I decided not to use this one because
# in the event that you have an array ["flower","flower","apple"],
# this loop would check every character in the first two,
# and break when it hit the "a" in "apple".
# But the other version would check the first letter
# of each word, thereby only comparing "f" to "f" and "f" to "a"
# before breaking.

# def longest_prefix(strings) # O(n * m)
#   # exit if the list is too short to compare anything
#   if strings.length <= 1
#     return strings.first
#   end

#   # select a comparison
#   comparison = strings.first
#   # create an prefix_end variable
#   prefix_end = 0
#   # for each word except the comparison
#   strings[1...strings.length].each do |word| # O(n)
#     # compare each string in that word to the comparison
#     for char in 0..word.length # O(m)
#       # set prefix_end to the current index
#       prefix_end = char
#       # exit if that character is not same as the comparison
#       if word[char] != comparison[char]
#         break
#       end
#     end
#   end

#   # prefix is each character up to the index
#   # (the index being the character that didn't match)
#   prefix = comparison[0...prefix_end]

#   return prefix
# end


# Time Complexity: O(n * m)
# Space Complexity: O(1)
def longest_prefix(strings) # O(n * m)
  # exit if the list is too short to compare anything
  if strings.length <= 1
    return strings.first
  end
  
  # get one string to compare to the others
  comparison = strings.first
  # create an prefix_end variable
  prefix_end = 0
  # set continue
  continue = true
  # while the strings match
  while continue # O(m)
    # for each string in the array besides the first
    strings[1...strings.length].each do |str| # O(n)
      # if the string doesn't match at the index character
      # or is `nil` to prevent an infinite loop in
      # the case of identical words,
      if str[prefix_end] != comparison[prefix_end] || str[prefix_end].nil?
        # break the while loop
        continue = false
        # break the each loop
        break
      end
    end
    
    # while characters match,
    # move up the prefix_end
    prefix_end += 1 if continue
  end
  
  prefix = comparison[0...prefix_end]
  return prefix
end
