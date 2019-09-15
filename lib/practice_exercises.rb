
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  list.each do |num|
    if list.include? num
      list.delete_at num
    end
  end
end


# Time Complexity: O(n*m)
# Space Complexity: O(n)
def longest_prefix(strings)
  
  # find smallest word in array to loop through that length
  min = strings.min_by {|word| word.length}
  letters = []
  min.length.times do |i|
    strings.each do |word|
      letters << word[i]
    end
  end
  
  # take in non-duplicated letters into another array
  unique_letters = []
  
  letters.each do |letter|
    if letters.include? letter
      unique_letters << letter
    end
  end
  
  # find how many times a unique letter repeats and match it to the length of array
  counts = Hash.new(0)
  
  letters.each do |letter|
    counts[letter] += 1
  end
  
  common_prefix = []
  
  counts.each do |letter, num|
    if num == strings.length
      common_prefix << letter
    end
  end
  
  # modify array of individual letter strings to one string
  return common_prefix.join("")
end
