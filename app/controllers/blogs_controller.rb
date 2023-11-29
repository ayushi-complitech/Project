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
    @user = @blog.user
      if (current_user.role.role_name == "admin" || @user == current_user)
        render 'edit'
      else
        flash[:alert] = "This blog is not available for you."
        redirect_to blogs_path
      end
  end
 
  def create
    @blog = current_user.blogs.build(blog_params)
    @blog.image.attach(params[:blog][:image])
 
    if @blog.save
      flash[:notice] = "This blog is successfully created."
      redirect_to @blog
    else
      render 'new'
    end
  end
 
  def update
    @blog = Blog.find(params[:id])
 
    if @blog.update(blog_params)
      flash[:notice] = "This blog is successfully updated."
      redirect_to @blog
    else
      render 'edit'
    end
  end
 
  def destroy
    @blog = Blog.find(params[:id])
    @user = @blog.user
     if (current_user.role.role_name == "admin" || @user == current_user)
        @blog.destroy
        flash[:alert] = "This blog is successfully destroyed."
      else
        redirect_to blogs_path
        flash[:alert] = "This blog is not available for you."
      end   
    redirect_to blogs_path
  end

 
  private
    def blog_params
      params.require(:blog).permit(:blog_name, :description, :content, :image)
    end
  
end
