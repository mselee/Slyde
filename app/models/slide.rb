class Slide < ActiveRecord::Base
  belongs_to :document
  has_many :comments, :as => :commentable, dependent: :delete_all
end
