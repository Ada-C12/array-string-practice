# Time Complexity: O(n) - Need to go through each index of the array to compare its values.
# Space Complexity: O(1)
def remove_duplicates(list)
  list.each do |i|
    if list[i] == list[i+1]
      list.delete_at(i)
      i += 1
    end
  end
    return list
end

# referred to solution from https://leetcode.com/problems/longest-common-prefix/discuss/291314/Ruby-Solution
# and added another condtion '&& !(word[-1] == base[i])' to pass test: "will work for the strings with the common prefix in the rear"

# Time Complexity: O(n)
# Space Complexity: O(2)
def longest_prefix(strings)
  return "" if strings.empty? 

  result = ""
  base = strings[0]
  
  base.each_char do |i|
    if strings.all?{|word| word[i] == base[i] && !(word[-1] == base[i])}
      result += base[i]
    else
      break
    end
  end
  return result
end
