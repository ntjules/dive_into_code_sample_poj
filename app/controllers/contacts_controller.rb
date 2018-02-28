class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  def testi
   
    @contact = Contact.new
    @contacts=Contact.all
    render 'test'
    
    
     
  end
  
  def index
    @search = Contact.search(params[:q])
      @scontacts = @search.result

    @contact = Contact.new
     @contacts=Contact.all
    # binding.pry
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'contacts/report',pdf:'report' , header: { right: '[page] of [topage]' }}
      
    end
    
  end
  def new
    
    @contact = Contact.new
     
    
  end
  def create
     @contacts=Contact.all
     @contact = Contact.new(contact_params)
     if @contact.save
      # redirect_to new_contact_path, notice: "***You have created new contact successfully!!***"
       redirect_to contacts_path, notice: "***successfully created!!***"
    
       else
      # render 'new'
       render 'index'
     end
     
  end
  # def show
  #   @blog = Blog.find(params[:id])
  # end
  def edit
     @contacts=Contact.all
    # @contact = Contact.find(params[:id])
  end
  def update
    @contacts=Contact.all
  # @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contacts_path, notice: "***successfully updated!!***"
    else
      render 'edit'
    end
  end
  def destroy
  @contact.destroy
   redirect_to contacts_path, notice: "You have deleted the blog!"
  # redirect_to test_path, notice: "You have deleted the contact!"
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
  def set_contact
      @contact = Contact.find(params[:id])
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
    
  # def contactsdisplay
  #     @blogs=Contact.all
  #     render 'display'
  # end
  # def newcontact
    
    
  # @contact = Contact.new
  
  #   render :contact
  # end
  # def createcontact
  #   # Contact.create(contact_params)
  #   @contact = Contact.new(contact_params)
  #   if @contact.save
  #     redirect_to contacts_path, notice: "***You have created new contact successfully!!***"
    
     
  #     else
  #     render 'contact'
  
  #   end
  #       # redirect_to contacts_path
  # end
  # def contact_edit
  #   #   @contacter=Contact.edit
  #     @contact = Contact.find(params[:id])
  #     render 'edit'
  # end
  # def contact_update
  #     @contact = Contact.find(params[:id])
  #   if @contact.update(blog_params)
  #     redirect_to 'contact', notice: "You have edited this blog！"
  #   else
  #     render 'edit'
  #   end
  # end
  
  # private
  # def contact_params
  #   params.require(:contact).permit(:name, :email, :content)
  # end
end
