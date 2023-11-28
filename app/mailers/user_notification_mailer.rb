class UserNotificationMailer < ApplicationMailer

  def create_user(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "A new #{object.class} has been created."
  end

  def update_user
    
  end

  def delete_user
   
  end
end
