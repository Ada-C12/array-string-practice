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
  total_words = strings.length
  prefix = ""

  if total_words == 0
    return prefix
  end

  if total_words == 1
    return strings[0]
  end

  total_words.times do |index|
    word = strings[index]
    i = index + 1
    while i < total_words
      next_word = strings[i]
      if prefix[index] != word[index] && word[index] == next_word[index]
        prefix += word[index]
      end
      i += 1
    end
  end
  return prefix
end
