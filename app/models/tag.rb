class Tag < ApplicationRecord
  has_many :posts, :through => :posttags, :source => :post
  has_many :ferdoodles, :through => :posttags, :source => :post
  has_many :posttags
end
