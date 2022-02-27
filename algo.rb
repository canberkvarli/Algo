# Two Sum
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

 

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]
 

# Constraints:

# 2 <= nums.length <= 104
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.
 

# Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

#SOLUTION (1)
def two_sum(nums, target)
#    [2,7,11,15], 9
#   setup an result array
#   iterate on the array (inner)
#   if i + j == target 
#   then push the i and j to the result array
#   return the result array
    
    result = []
    nums.each_index do |i|
        nums.reverse.each_index do |j|
            if (i < j) && (nums[i] + nums[j] == target)
                result.push(i,j) 
            end
        end
    end
    return result
end

# two_sum([2,7,11,15], 9)

#O(n^2)

#SOLUTION(2) with a Hash map
# nums = [2,7,11,15], target = 9
# Create a hashmap which accepts integer datatype as key and value.

# Iterate through each element in the given array starting from the first element.

# In each iteration check if required number (required  number = target - current number) is present in the given array.

# If present, return {required number index, current number index} as  result.

# Otherwise add the current iteration number as key and its index as value to the hashmap. Repeat this  until you find the result.

def two_sum(nums, target)
    
end

# Convert number to reversed array of digits

def digitize(n)
    #(354321)
  n.to_s.chars.reverse.map(&:to_i)
end 

def remove_consecutive_duplicates(s)

array = s.split(" ")  
resp = []
  
# Remove consecutive duplicate words
for i in 0...array.length()
  
    if array[i] != array[i + 1]
        resp << array[i]  
    end
  
end
return resp.join(' ')

end 


#Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
#
#You must write an algorithm with O(log n) runtime complexity.

 

#Example 1:

#Input: nums = [-1,0,3,5,9,12], target = 9
#Output: 4
#Explanation: 9 exists in nums and its index is 4
#Example 2:

#Input: nums = [-1,0,3,5,9,12], target = 2
#Output: -1
#Explanation: 2 does not exist in nums so return -1


def search(nums, target)
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    #binary search
    
    #find middle
    #set min and max
    
    # if mid = target
        # return mid
    # if mid > target
        #discard right side focus left
        #max = mid - 1
    # else 
        #min = mid + 1
        #discard left side focus right
    
        #return nums.index
        min = 0 
        max = nums.length - 1
        while min <= max 
            mid = (min + max)/2
            if nums[mid] == target
            return mid
            elsif nums[mid] < target
                min = mid + 1 
            else
                max = mid - 1
            end
        end
        -1
    end
end


#You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

#Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

#You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

 

#Example 1:

#Input: n = 5, bad = 4
#Output: 4
#Explanation:
#call isBadVersion(3) -> false
#call isBadVersion(5) -> true
#call isBadVersion(4) -> true
#Then 4 is the first bad version.
#Example 2:

#Input: n = 1, bad = 1
#Output: 1

def firstBadVersion(n)

    left = 1
    right = n

    while left < right
        mid = (left+right)/2

        if isBadVersion(mid)
            right = mid 
        else 
            left = mid + 1
        end
    end
left
end

# Search Insert Position

#Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

#You must write an algorithm with O(log n) runtime complexity.



#Input: nums = [1,3,5,6], target = 5
#Output: 2
#Example 2:

#Input: nums = [1,3,5,6], target = 2
#Output: 1
#Example 3:

#Input: nums = [1,3,5,6], target = 7
#Output: 4
 
def search_insert(nums, target)
    #binary search and find the target
    #if not found
    
    left = 0
    right = nums.length - 1
    
    while left <= right
       mid = (left+right) / 2
        if nums[mid] == target
            return mid
        elsif nums[mid] > target
            #focus left
            right = mid - 1
        else
            #focus right
            left = mid + 1
        end
    end
    # if not found
    left
end

#Squares of a Sorted Array

#Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

 

#Example 1:

#Input: nums = [-4,-1,0,3,10]
#Output: [0,1,9,16,100]
#Explanation: After squaring, the array becomes [16,1,0,9,100].
#After sorting, it becomes [0,1,9,16,100].
#Example 2:

#Input: nums = [-7,-3,2,3,11]
#Output: [4,9,9,49,121]

def sorted_squares(nums)
    #use mapping
    nums.map{|n| n**2}.sort
end


#Rotate Array

#Given an array, rotate the array to the right by k steps, where k is non-negative.

 

#Example 1:

#Input: nums = [1,2,3,4,5,6,7], k = 3
#Output: [5,6,7,1,2,3,4]
#Explanation:
#otate 1 steps to the right: [7,1,2,3,4,5,6]
#rotate 2 steps to the right: [6,7,1,2,3,4,5]
#rotate 3 steps to the right: [5,6,7,1,2,3,4]


def rotate(nums, k)

    k.times {|i| nums.unshift(nums.pop)}
    return nums
end

#Move Zeroes

#
#Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

##Note that you must do this in-place without making a copy of the array.

 

#Example 1:

#nput: nums = [0,1,0,3,12]
#Output: [1,3,12,0,0]

def move_zeroes(nums)
#[0,1,0,3,12]
 head = 0
    #head = 1
  nums.each_with_index do |num, i| 
      #i = 3
    if(nums[i] != 0) 
      nums[head], nums[i] = nums[i], nums[head]
      head+=1
    end
  end
end


#Two Sum II - Input Array Is Sorted


#Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
#
#Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.

#The tests are generated such that there is exactly one solution. You may not use the same element twice.

#Your solution must use only constant extra space.

 

#Example 1:

#Input: numbers = [2,7,11,15], target = 9
#Output: [1,2]
#Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].
#Example 2:

#Input: numbers = [2,3,4], target = 6
##Output: [1,3]
#Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].
#Example 3:

#Input: numbers = [-1,0], target = -1
##Output: [1,2]
#Explanation: The sum of -1 and 0 is -1. Therefore index1 = 1, index2 = 2. We return [1, 2].

def two_sum(numbers, target)

 i = 0
    j = numbers.length-1
    while(i < j)
        curr_sum = numbers[i]+numbers[j]
        if(target > curr_sum)
            i += 1
        elsif(target < curr_sum)
            j -= 1
        else
            return [i+1,j+1]
        end
    end
end

#Reverse Words in a String III

#Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

 

#Example 1:

#Input: s = "Let's take LeetCode contest"
#Output: "s'teL ekat edoCteeL tsetnoc"

def reverse_words(str)
    #split the string by space
    #iterate words and reverse every word
    # push reversed word into result
    # join it by space 
    result = []
    words = str.split(' ')
    words.each {|word| result << word.reverse()}
    return result.join(" ")
    
end

#  Write a method `factorial(n)` which takes a number and returns the factorial of n.
#  A factorial is the product of all whole numbers between 1 and n, inclusive.
#  For example, `factorial(5)` is 5 * 4 * 3 * 2 * 1 = 120.

def factorial(n)
    # base case
    return 1 if n == 1
    # recursion case

    return n * factorial(n -1)
end


=begin
// Write a method fib(n) that takes in a number and returns the nth number of
// the fibonacci sequence.
//
// In the fibonacci sequence, the 1st number is 1 and the 2nd number is 1. To generate the
// next number in the sequence, we take the sum of the previous two fibonacci numbers.
// For example the first 5 numbers of the fibonacci sequence are `1, 1, 2, 3, 5`
//
// Examples:
//
// fib(1) // => 1
// fib(2) // => 1
// fib(3) // => 2
// fib(4) // => 3
// fib(5) // => 5
// fib(6) // => 8
// fib(7) // => 13
=end

def fastFib(n, memo = {}) 
    # 3
    # base case
    return 1 if n == 1
    return 1 if n == 2
    return memo[n] if memo.include?(n)

    # recursive case

    memo[n] = fastFib(n-2) + fastFib(n-1)
    return memo[n]
end

puts fastFib(35)



# isPrime?(val)

# Test if number is prime
def isPrime(num)

  if num < 2
    return false
  end
  
#   return false if num is divisible n
  range = (2...num)
  range.each do |n|
      if num % n == 0
        return false
      end
  end
  return true
end


def rot13(secret_messages)
#    alphabet variable
#    ["Why", "did", "the", "chicken", "cross", "the", "road"]
#     iterate over the array
#     for every word
#         use helper function on a word
#         and shovel the helper(word) to the result array
#     return the result array
    # result = []
     secret_messages.map do |msg| 
         rotate(msg)
     end
end


def rotate(word)
#     split the word into chars 
#     find the pos of the char and add 13 
#     new_char = alphabet[pos % alphabet.length]
#       add new_char to the result
#       new_word.join(',').to_s
    
    new_word = ""
    alphabet = ("a".."z").to_a
    chars = word.chars
    chars.each do |char|
       if alphabet.include?(char)
        pos = alphabet.index(char)
        new_pos = pos + 13
        new_char = alphabet[new_pos % alphabet.length]
        new_word += new_char
       else
          new_word += char 
       end
    end
    new_word
end

def sum_terms(n)
# your code here
    nums = []
    (1).upto(n) do |i|
        nums << ((i*i)+1)
    end
    nums.reduce(0, :+)

end
