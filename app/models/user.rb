class User < ApplicationRecord
     has_many :products
     has_many :purchases


     validates :name, presence: true     
     validates :phone_number, presence: true
     validates :username, presence: true
     validates :password, presence: true
     validates :access_level, presence: true
end
