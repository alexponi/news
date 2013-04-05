class Post < ActiveRecord::Base
  attr_accessible :message, :title, :vote, :user_id, :email
  belongs_to :user
end
