class Post < ActiveRecord::Base
  attr_accessible :message, :title, :vote, :user_id, :email
  belongs_to :user
  has_many :votes, dependent: :destroy

  before_destroy :destroy_votes

  private

  # ensure that there are no votes referencing this post
    def destroy_votes
      Vote.where(post_id: self.id).destroy_all
    end	
end
