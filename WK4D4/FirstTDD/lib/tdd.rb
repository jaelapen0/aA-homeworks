# Remove dups
# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:
require "byebug"

    def my_uniq(arr)
        raise ArgumentError if arr.empty?
        unique = []
        #debugger
        arr.each {|ele| unique << ele if !unique.include?(ele)}
        
        return unique.sort
    end 

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an Array and return a new array.

# Two sum
# Write a new Array#two_sum method that finds all pairs of positions where the elements at those positions sum to zero.
class Array

    def two_sum
        #debugger
        pairs = []
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1 && ele1 + ele2 == 0
                    pairs << [idx1, idx2]
                
                end
            end
        end
        return nil if pairs.empty?
        return pairs
    end

end
# NB: ordering matters. We want each of the pairs to be sorted smaller index before bigger index. We want the array of pairs to be sorted "dictionary-wise":

# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
# [0, 2] before [2, 1] (smaller first elements come first)
# [0, 1] before [0, 2] (then smaller second elements come first)
# My Transpose

def my_transpose(arr)
    return nil if arr.empty?
    transposed = []
    #arr.transpose
    (0...arr.length).each do |i|
        temp = []
        arr.each do |row|
            temp << row[i]
        end
        transposed << temp
    end
    transposed
end
# To represent a matrix, or two-dimensional grid of numbers, we can write an array containing arrays which represent rows:

# rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]

# row1 = rows[0]
# row2 = rows[1]
# row3 = rows[2]
# We could equivalently have stored the matrix as an array of columns:

cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
# Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations. You may assume square matrices for simplicity's sake. Usage will look like the following:

# my_transpose([
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ])
#  # => [[0, 3, 6],
#  #    [1, 4, 7],
#  #    [2, 5, 8]]

# Stock Picker
# Write a method that takes an array of stock prices (prices on days 0, 1, ...),
#  and outputs the most profitable pair of days on which to first buy the stock and then sell the stock. 
#  Remember, you can't sell stock before you buy it!

def stock_picker(arr)
   # hash = Hash.
    profit = 0
    newarr =[]
    (0...arr.length-1).each do |i1|
        (i1+1...arr.length).each do |i2|
            tempprofit = arr[i2] - arr[i1]
            if profit < tempprofit
                profit = tempprofit
                newarr = [i1, i2]
            end
        end
    end
    return newarr
end

# ( 12, 7, 9 , 10, 7 )
#   (7,10,9,7,12)

#   buy = 7 sell = 10 
#   profit = 0
#   if sell - buy > profit  

# Towers of Hanoi
# Write a Towers of Hanoi game.

# Keep three arrays, which represents the piles of discs. Pick a representation of the discs to store in the arrays; maybe just a number representing their size. Don't worry too much about making the user interface pretty.

# In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.

# After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!

# Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:

# #move
# #won?
# Get a code review from a TA