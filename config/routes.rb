Rails.application.routes.draw do
    # get 'blogs/index'
  get    '/'             ,to: 'contacts#index'
  # get    '/test'         ,to: 'contacts#testi'
#   post   '/contacts'     ,to: 'contacts#createcontact'
#   get    '/contacts'     ,to: 'contacts#newcontact'
#   get    '/contacts/:id'         ,to: 'contacts#contact_edit' ,as: 'edit'
#   put    '/contacts/:id'         ,to: 'contacts#contact_update' ,as: 'update'
  
  # resources :blogs #   // for all seven normal actions
  resources :contacts
  resources :blogs
  # resources :tweetings
  
  
#   get    '/blogs/new'    ,to: 'blogs#new'
#   get    '/blogs'        ,to: 'blogs#index'
#   post   '/blogs'        ,to: 'blogs#create'
#   get    '/blogs/:id'    ,to: 'blogs#show' ,as: 'show'
#   get    '/blogs/:id/edit'         ,to: 'blogs#edit' , as: 'blogedit'
#   put    '/blogs/:id'    ,to: 'blogs#update'
  
  

  # get '/' ,to: 'blogs#newcontact'
  
  # post   '/blogs'          ,to: 'blogs#createcontact'
  
  # get    '/contacts'       ,to: 'blogs#newcontact'
  
  
  
  # post   '/contacts'       ,to: 'blogs#create'
  # get    '/blogs/:id/edit' ,to: 'blogs#new'
  # 
  # patch  '/blogs/:id'      ,to: 'blogs#update'
  # delete '/blogs/:id'      ,to: 'blogs#destroy'
  
  

  end
