
# Time Complexity: O(m)
# Space Complexity: O(1)
def remove_duplicates(list)
  (list.length - 1).times do |count|
    if list[count + 1] == list[count]
      list[count + 1] = nil
    end
  end
  
  (list.length - 1).times do |number|
    if list[number] == nil
      list[number] = list[number + 1]
      list[number + 1] = nil
      if list[number - 1] == nil
        list[number - 1] = list[number]
        list[number] = nil
      end
    end
  end
  return list
end

# Time Complexity: O(n*m)
# Space Complexity: O(1)
def longest_prefix(strings)
  initial_match = ''
  length = strings[0].length
  length.times do |letter|
    if strings[0][letter] == strings[1][letter]
      initial_match.concat(strings[0][letter])
    end
  end
  
  strings.each do |word|
    match = ''
    initial_match.length.times do |letter|
      if initial_match[letter] == word[letter]
        match.concat(word[letter])
      end
    end
    initial_match = match
  end
  
  return initial_match
end

# p remove_duplicates([1, 2, 2, 3, 3, 4])
p longest_prefix(["flower","flow","flight"])