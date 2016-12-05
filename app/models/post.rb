class Post < ApplicationRecord
  has_many :posts
  has_many :users,  :through => :userpost
  has_many :comments, :dependent => :destroy 
  has_many :posttaggings, :through => :posttags, :source => :tag
  has_many :whothedang, :through => :posttags, :source => :tag
  belongs_to :category
  belongs_to :fireplace, :class_name => "Category", :foreign_key => :category_id
  has_many :posttags
  has_many :userposts
end
