class User < ActiveRecord::Base
    has_secure_password
	validates :name, presence: true, uniqueness: true
	validates :gender, presence: true
	validates :email, presence: true, uniqueness: true

	has_many :comments, dependent: :delete_all
	has_many :documents, dependent: :delete_all
	has_many :likes, dependent: :delete_all
end
