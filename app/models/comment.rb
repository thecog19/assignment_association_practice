class Comment < ApplicationRecord
  belongs_to :idiot, :class_name => "User", :foreign_key => :user_id
  belongs_to :postes, :class_name => "Post", :foreign_key => :post_id
end
