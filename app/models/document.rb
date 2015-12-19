class Document < ActiveRecord::Base
  belongs_to :user
  has_many :slides, dependant: :delete_all
  has_many :comments, :as => :commentable, dependant: :delete_all
end
