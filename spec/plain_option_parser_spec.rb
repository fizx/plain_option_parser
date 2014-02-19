require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

$pop = PlainOptionParser.new do
  desc "set abc"
  cmd "test set abc" do |value|
    $abc = value
    $abc += flags["app"] if flags["app"]
  end
  
  desc "unset abc"
  cmd "test unset abc" do
    $abc = false
  end

  desc "with placeholder"
  cmd "test with [placeholder]" do |value|
    $placeholder = value
  end
end

describe "PlainOptionParser" do
  before do 
    $abc = nil
  end
  
  it "should set placeholder" do
    $pop.start %w[test with 123]
    $placeholder.should == "123"
  end
  
  it "should set abc" do
    $pop.start %w[test set abc 123]
    $abc.should == "123"
  end
  
  it "should not match partial paths" do
    $pop.start %w[test set]
    $abc.should be_nil
  end
  
  it "should unset abc" do
    $pop.start %w[test unset abc]
    $abc.should be_false
  end
  
  it "should take a flag" do
    $pop.start %w[test set abc 123 --app foo]
    $abc.should == "123foo"
  end
end
