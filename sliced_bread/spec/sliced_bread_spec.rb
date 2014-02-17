require 'sliced_bread'

describe Array do
  before(:all) do
    @array = ['a', 'b', 'c', 'd']
  end

  it "should return itself if the top number exceeds the array size" do
    @array.top(4).should == @array
  end

  it "should return subset of the array if the top number is in the range of array" do
    @array.top(3).should == ['a', 'b', 'c']
  end

  it "should return subset of the array if last number is in the range of the array" do
    @array.bottom(3).should == ['b', 'c', 'd']
  end

  it "should return self if the last number is less than 0" do
    @array.bottom(-4).should == @array
  end

  it "should return self if the last number exceeds the array size" do
    @array.bottom(5).should == @array
  end
end