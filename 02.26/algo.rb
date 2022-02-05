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
