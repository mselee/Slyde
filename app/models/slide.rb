class Slide < ActiveRecord::Base
  belongs_to :document
  has_many :comments, :as => :commentable, dependant: :delete_all
end
