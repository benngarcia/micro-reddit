class User < ApplicationRecord
    validates :username, length: { in: 4...16 }
    validates :username, :email, presence: true
    validates :email, uniqueness: true
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
end
