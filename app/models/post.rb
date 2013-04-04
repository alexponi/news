class Post < ActiveRecord::Base
  attr_accessible :message, :title, :vote
end
