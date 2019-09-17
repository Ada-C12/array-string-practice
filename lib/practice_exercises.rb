# Time Complexity: O(n^2)
# Space Complexity: O(1)
def remove_duplicates(list)
  list.each_with_index do |value, index|
    if index > 0 
      if value == list[index - 1] 
        list.slice!(index) 
      end
    end
  end
  return list
end

# Time Complexity: O(n)
# Space Complexity: O(n)

def longest_prefix(strings)

  min_string = strings.min { |a,b| a.length <=> b.length}
  hi = min_string.length - 1
  low = 0
  mid = (hi + low)/2
  commons = []

  strings.each do |string|
    if min_string == string.slice(low..hi)
      commons << string
    end
  end
  return min_string if commons.length == strings.length

  until hi <= low
    commons = []
    hi -= 1
    prefix = min_string.slice(low..hi)
    
    strings.each do |string|
      if prefix == string.slice(low..hi)
        commons << string
      end
    end
    return prefix if commons.length == strings.length
  end
  
  return ""
end
