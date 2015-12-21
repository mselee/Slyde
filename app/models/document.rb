class Document < ActiveRecord::Base
  belongs_to :user
  has_many :slides, dependent: :delete_all
  has_many :comments, :as => :commentable, dependent: :delete_all

  def get_slide number
    self.slides[number - 1]
  end

end
