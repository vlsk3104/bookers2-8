class Book < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: {maximum: 50}
  	validates :body, presence: true, length: {minimum: 2, maximum: 200}
end
