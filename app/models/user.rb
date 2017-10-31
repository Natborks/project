class User < ApplicationRecord
	validates :firstname, :lastname, :IDnum, :email, presence: true
	validates :IDnum, uniqueness: true
	validates :email, uniqueness: true

	has_many :projects
	accepts_nested_attributes_for :projects
end