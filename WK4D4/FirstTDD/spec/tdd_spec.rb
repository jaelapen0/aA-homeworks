require "tdd"
require "rspec"


describe "#my_uniq" do 
   it "return returns uniq elements of the given array" do
      expect(my_uniq([1,1,2,2,3,3,4,4,5,5])).to eq([1,2,3,4,5])
   end
   it "should sort the array as well" do
      expect(my_uniq([5,3,2,5,6,5,1,2,4,5])).to eq([1,2,3,4,5,6])
   end

   it "should raise error if arr is empty" do
      expect{ my_uniq([]) }.to raise_error(ArgumentError)
   end
end

describe "Array#two_sum" do
   it "finds pairs of position indices where the elements sum to zero" do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4],[2, 3]])
   end 
   it "return nil if no 2 elements add up to 0" do
      expect([3,4,5,6,39,11,0].two_sum).to eq(nil)
   end

   it "should have smaller ele go first when a pair adds to 0" do
      expect([4,3,-4,-3].two_sum).to eq([[0,2],[1,3]])
   end
   it "should have smaller ele go first when a pair adds to 0" do
      expect([4,3,-4,-3].two_sum).not_to eq([[2,0],[3,1]])
   end
   

end

describe "my_transpose" do
   let(:arr)  {[[0, 1, 2],[3, 4, 5], [6, 7, 8]]}
   let(:arr2) { [ [0, 3, 6],[1, 4, 7],[2, 5, 8] ] }
   let(:arr3) {[]}

   before(:each) do
      expect_any_instance_of(Array).not_to receive(:transpose)
   end
   it "should accept a 2d array and transpose rows & columns" do
      expect(my_transpose(arr)).to eq(arr2)
   end

    it "should accept a 2d array and transpose rows & columns" do
      expect(my_transpose(arr2)).to eq(arr)
   end
   
   it "return nil if array is empty" do
      expect(my_transpose(arr3)).to eq(nil)
   end
end

describe "#stock_picker" do 
   let(:arr1) {[ 12, 7, 9, 10, 7]}
   let(:arr2) {[10,15,12,8,3,5,24,18,16]}

   it "should pick cheapest and most expensive pair days" do
      expect(stock_picker(arr1)).to eq([1,3])
   end

   it "should pick cheapest and most expensive pair days" do
      expect(stock_picker(arr2)).to eq([4,6])
   end

end


# describe "Array#my_each_with_index" do
#   let(:arr) { [1,2,3] }
#   let(:res) { Array.new }

#   before(:each) do
#     expect(arr).not_to receive(:each)
#     expect(arr).not_to receive(:map)
#     expect(arr).not_to receive(:dup)
#     expect(arr).not_to receive(:slice)
#     expect_any_instance_of(Array).not_to receive(:each_with_index)
#     expect_any_instance_of(Array).not_to receive(:map!)
#   end


# describe "zip" do
#     let(:array_1) { ['a', 'b', 'c'] }
#     let(:array_2) { [1, 2, 3] }
#     let(:array_3) { ['w', 'x', 'y'] }

#     it "should accept any number of arrays of the same length as arguments" do
#         expect { zip(array_1) }.to_not raise_error
#         expect { zip(array_1, array_2) }.to_not raise_error
#         expect { zip(array_1, array_2, array_3) }.to_not raise_error
#     end

#     it "should return a 2D array where each subarray contains the elements at the same index from each argument" do
#         expect(zip(array_1, array_2)).to eq([
#             ["a", 1],
#             ["b", 2],
#             ["c", 3]
#         ])

#         expect(zip(array_2, array_1)).to eq([
#             [1, "a"],
#             [2, "b"],
#             [3, "c"]
#         ])

#         expect(zip(array_1, array_2, array_3)).to eq([
#             ["a", 1, "w"],
#             ["b", 2, "x"],
#             ["c", 3, "y"]
#         ])
#     end
# end



# describe "Array#my_join" do
#   let(:array) { [ "a", "b", "c", "d" ] }

#   before(:each) do
#     expect_any_instance_of(Array).not_to receive(:join)
#   end

#   it "joins an array if no argument is passed" do
#     expect(array.my_join).to eq("abcd")
#   end

#   it "joins an array if an argument is passed" do
#     expect(array.my_join("$")).to eq("a$b$c$d")
#   end
# end