module BlogsHelper
  def convert_created_date(blog)
    if current_user.timezone == "(GMT+05:30) Kolkata"
      blog.created_at.in_time_zone('Chennai') 
    else
      blog.created_at
    end
  end

  def convert_updated_date(blog)
  	 if current_user.timezone == "(GMT+05:30) Kolkata"
      blog.updated_at.in_time_zone('Chennai') 
    else
      blog.updated_at
    end
  end
end
