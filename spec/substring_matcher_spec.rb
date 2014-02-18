require 'sliced_bread'

describe Array do
  before(:all) do
    @array = ['','aaa', 'bbb', 'ccc', 'ddd']
  end

  it "should return itself if the delete_if_contains string is not a substring of any element" do
    @array.delete_if_contains('e').should == @array
  end
  
  it "should return subset of the array if the delete_if_contains string is a substring of any element" do
    @array.delete_if_contains('a').should == ['','bbb','ccc','ddd']
  end
  
  it "should return subset of the array if the delete_if_contains string is an empty string" do
    @array.delete_if_contains('').should == []
  end

end
  
  