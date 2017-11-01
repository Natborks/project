class User < ApplicationRecord

	validates :firstname, :lastname, :IDnum, :email, :terms, presence: true
	validates :IDnum, uniqueness: true
	validates :email, uniqueness: true

	has_many :projects
end