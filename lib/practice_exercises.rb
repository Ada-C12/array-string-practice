
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def remove_duplicates(list)
  length = list.length
  if length == 0
    return []
  end 
  length.times do |k|
    if k > 0 && list[k] == list[k-1]
      i = k
      until i > length || list[i-1] == nil do 
        list[i - 1] = list[i]
        i += 1
      end 
    end
    k += 1 
  end 
  return list
end

# Time Complexity: O(n), where n is total length of all strings combined 
# Space Complexity: O(1)
def longest_prefix(strings)
  strings.each do |string|
    if string.length == 0
      return ""
    end 
  end 
  prefix = strings[0]
  (1...strings.length).each do |n|
    (0...prefix.length).each do |i|
      if strings[n][i] != prefix[i]
        if i == 0
          prefix = ""
          break
        else 
          prefix = prefix[0...i]
          break
        end 
      end 
    end 
  end 
  return prefix
end 