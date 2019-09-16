require "pry"
# Time Complexity: o(n)
# Space Complexity: o(1)

# num = [1, 2, 2, 3, 4, 4]
def remove_duplicates(list)
  i = 0
  while i <= list.length
    if list[i] == list[i + 1]
      list.delete_at(i)
    end
    i += 1
  end

  # print list.length
  return list
end

# remove_duplicates(num)
#==============================================================

# Time Complexity: o(n^2)
# Space Complexity: ?o(n)

def longest_prefix(strings)
  # If there is no common prefix, return an empty string
  total_words = strings.length
  if total_words == 0
    return ""
  end
  if total_words == 1
    return strings[0]
  end

  longest_prefix = ""
  i = 0
  strings[0].length.times do
    word = strings[0][i]
    common_word = 0
    strings.each do |string|
      if word == string[i]
        common_word += 1
      end
    end
    if common_word == strings.length
      longest_prefix << word
    end
    i += 1
  end
  return longest_prefix
end
