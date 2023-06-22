class PostPictureMailer < ApplicationMailer
  def post_picture_mail(picture)
    @picture = picture
    mail to: @picture.email, subject: "You could post picture!"
  end
end
