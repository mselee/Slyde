class Document < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable, dependant: :delete_all
end
