class Topic < ApplicationRecord
	has_many :votes, dependent: :destroy

  def self.upvote(topic)
    topic.votes.create
  end

  def self.downvote(topic)
    if topic.votes.count > 0
      topic.votes.first.destroy
    end
  end
end
