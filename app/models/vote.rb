class Vote < ActiveRecord::Base
  attr_accessible :post_id, :rate, :user_id
  belongs_to :post
  belongs_to :user
end
