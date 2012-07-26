require 'spec_helper'

describe Post do
	#it "should respond to employees" do
    #	 p = Post.new
   # 	 p.should respond_to(:employees)
   # end

   it "should belong to employee" do
     p = Post.reflect_on_association(:employee)
     p.macro.should == :belongs_to
   end
end
