class Vote < ActiveRecord::Base
  attr_accessible :post_id, :rate, :user_id
end
