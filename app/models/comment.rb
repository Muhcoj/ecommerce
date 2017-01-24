class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }

  #Because every comment record should be saved with a user ID, a product ID and a message, it's a good idea to validate the presence of all of those attributes
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

  after_create_commit { CommentUpdateJob.perform_later(self, @user) }
end
