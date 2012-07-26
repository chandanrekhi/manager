require 'spec_helper'
 
describe PostsController do
	
   describe "#create" do
  	let(:valid_params) {Post.new(:message => true)}

  	it "creates a successful message post" do
  		@post = Post.create(message: "Message")
  		@post.should be_an_instance_of Post
  	end
  end
end
