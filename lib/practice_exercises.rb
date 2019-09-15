
# Time Complexity: O(n) as the time taken will depend on the length of list.
# Space Complexity: I'd like to say O(1) as the space the array takes does not grow. 
def remove_duplicates(list)
  if list.length == 0 || list.length == 1
    return list 
  end 

  i = 0
  until i == list.length
    if list[i] == list[i+1]
      list.delete_at(i)
    end 
    i += 1
  end 
  return list
end

# Time Complexity: O(n) since the time it takes to process depends on the length of the string of arrays 
# Space Complexity: O(1) as the space of the array does not grow
def longest_prefix(strings)
  prefix = []
  i = 0 
  count = 0

  strings.first.length.times do 
    letter = strings.first[i]
    strings.each do |string|
      if string[i] == letter
        count += 1
      end 
    end 

    if count == strings.length
      prefix.push(letter)
    end 
    count = 0 
    i +=1
  end 

  if prefix.length == 0
    return ""
  else 
    return prefix.join("")
  end 

end

