class Slide < ActiveRecord::Base
  belongs_to :document
  has_many :comments, as: :commentable, dependent: :delete_all
  has_many :likes, as: :likable, dependent: :delete_all
end
