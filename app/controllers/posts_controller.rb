class PostsController < ApplicationController
  before_filter :authenticate_employee!

  def index  
    @posts = Post.all(:order => "created_at DESC")  
    respond_to do |format|  
      format.html  
    end  
  end  
    
  def create  
   
  	@post = Post.create(:message => params[:message], :employee_id => :current_employee)  
   # @post = Post.create(params[:post].merge!(:employee_id => session[:employee_id]))
   
    respond_to do |format|  
      if @post.save  
        format.html { redirect_to posts_path }  
        format.js 
      else  
        flash[:notice] = "Message failed to save."  
        format.html { redirect_to posts_path }  
      end  
    end  
  end  
end
