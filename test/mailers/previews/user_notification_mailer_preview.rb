# Preview all emails at http://localhost:3000/rails/mailers/user_notification_mailer
class UserNotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_notification_mailer/create_user
  def create_user
    UserNotificationMailer.create_user
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_notification_mailer/update_user
  def update_user
    UserNotificationMailer.update_user
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_notification_mailer/delete_user
  def delete_user
    UserNotificationMailer.delete_user
  end

end
