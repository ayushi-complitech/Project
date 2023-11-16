class BlogsController < ApplicationController
  def index
    if current_user.role.role_name == "admin"
      @blogs = Blog.all
    else
     @blogs = current_user.blogs
    end
  end
 
  def show
    @blog = Blog.find(params[:id])
  end
 
  def new
    @blog = current_user.blogs.build
  end
 
  def edit
    @blog = Blog.find(params[:id])
  end
 
  def create
    @blog = current_user.blogs.build(blog_params)
 
    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end
 
  def update
    @blog = Blog.find(params[:id])
 
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end
 
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
 
    redirect_to blogs_path
  end
 
  private
    def blog_params
      params.require(:blog).permit(:blog_name, :description)
    end
  
end
