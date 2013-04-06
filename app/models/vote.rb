class Vote < ActiveRecord::Base
  attr_accessible :post_id, :rate, :user_id
  belongs_to :post
  belongs_to :user

  after_save :vote_calculation

  private

  def vote_calculation
    post = Post.find(self.post_id)
    post.update_attribute(:vote, post.votes.count)
  end 
end
