class PostPictureMailer < ApplicationMailer
  def post_picture_mail(picture)
    @picture = picture
    mail to: @picture.user.email, subject: "You could post picture!"
  end
end
