class Document < ActiveRecord::Base
  mount_uploader :file_path, FileUploader
  belongs_to :user
  has_many :slides, dependent: :delete_all
  has_many :comments, :as => :commentable, dependent: :delete_all
end
