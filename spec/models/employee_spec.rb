require 'spec_helper'

describe Employee do

    it "should belong to vertical" do
     e = Employee.reflect_on_association(:vertical)
     p.macro.should == :belongs_to
   end

end
