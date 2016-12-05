class User < ApplicationRecord
  has_many :userposts
  has_many :ugly_motherfuckers, :through => :userposts, :source => :post
  has_many :comments, :foreign_key => :user_id, :dependent => :destroy 
end