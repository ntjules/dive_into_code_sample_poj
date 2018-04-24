class BlogMailer < ApplicationMailer
  default :from => 'kglhacker@gmail.com'
  def blog_mail(contact,blog)
 @contact = contact
 
 @blog = blog

 mail to: @contact, subject: "confirmation new blog creation"
  end
end
