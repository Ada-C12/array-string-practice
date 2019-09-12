# Array & String Practice

In this exercise you will practice using arrays & strings to solve coding problems, and then identify the time and space complexity of your solution.  Try to write solutions with minimal time and space complexity.

Do not use the following methods or other ruby library methods that make this easy:

- `reject`
- `reject!`
- `uniq`
- `uniq!`

## Learning Goals

- Use loops, strings and arrays to solve coding problems
- Identify the time & space complexity of a given method

## Wave 1 Remove Duplicates from Sorted Array

Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

Example 1:

Given nums = `[1,1,2]`,

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

It doesn't matter what you leave beyond the returned length.
Example 2:

Given nums = `[0,0,1,1,1,2,2,3,3,4]`,

Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

It doesn't matter what values are set beyond the returned length.
Clarification:

Confused why the returned value is an integer but your answer is an array?

Note that the input array is passed in by reference, which means modification to the input array will be known to the caller as well.

Internally you can think of this:

```ruby 
# nums is passed in by reference. (i.e., without making a copy)
len = removeDuplicates(nums)

# any modification to nums in your function would be known by the caller.
# using the length returned by your function, it prints the first len elements.

(0..len).each do |i|
  puts nums[i]
end
```
## Wave 2 - Longest Prefix

Write `longest_prefix(strings)` to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

### Longest Prefix Example 1

```
Input: ["flower","flow","flight"]
Output: "fl"
Example 2:
```

### Longest Prefix Example 2

```
Input: ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
```

All given inputs are in lowercase letters a-z.

## Source

Taken from [leetcode.com](https://leetcode.com):

- [Longest Common Prefix](https://leetcode.com/problems/longest-common-prefix/)
- [Remove duplicates](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
