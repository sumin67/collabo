class PostController < ApplicationController
    def new
    end
    
    def create
        user = Userinfo.new
        user.title = params [:bo_title]
        user.content = params [:bo_content]
        user.save
        
        redirect_to :root
    end
    
    def index
        @users = Userinfo.all
    end
    
    
end    
