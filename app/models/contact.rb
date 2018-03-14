class Contact < ApplicationRecord
     validates :content,    length: { in: 1..140 } 
      validates :name, presence: true
       validates :email, presence: true
       validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
