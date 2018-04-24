Rails.application.routes.draw do
 resources :sessions, only: [:new, :create, :destroy]

    # get 'blogs/index'
  get    '/'             ,to: 'blogs#index' ,as: 'home'
  get    '/my_fav'    ,to: 'blogs#my_fav' ,as: 'my_fav'
  # get    '/contacts/:id'         ,to: 'contacts#index' ,as: 'main_app'
   get    '/contacts/:id'         ,to: 'blogs#index' ,as: 'main_app'
  # get    '/test'         ,to: 'contacts#testi'
#   post   '/contacts'     ,to: 'contacts#createcontact'
#   get    '/contacts'     ,to: 'contacts#newcontact'
#   get    '/contacts/:id'         ,to: 'contacts#contact_edit' ,as: 'edit'
#   put    '/contacts/:id'         ,to: 'contacts#contact_update' ,as: 'update'
  
  # resources :blogs #   // for all seven normal actions
  # resources :users, only: [:new]
  resources :users
  resources :contacts
  resources :blogs
  resources :favorites, only: [:create, :destroy]
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
