
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def remove_duplicates(list)
  list.each do |i|
    if list[i] == list[i + 1]
      list.delete_at(i)
    end
  end
  return list
end

# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  loops = (strings.length) - 1
  comparison_word = strings[0]
  
  loops.times do |i|
    prefix = ""
    counter = 0
    
    strings[i + 1].each_char do |letter|
      if letter == comparison_word[counter]
        prefix<<(letter)
      end
      counter += 1
    end
    comparison_word = prefix
  end
  
  return comparison_word
end

