class UserController < ApplicationController
   def index
       # added some condition for where clause
       #@tests = Test.paginate(:page => params[:page])
       @posts = Post.paginate :page => params[:page]
   end
end