class Post < ApplicationRecord
    validates :title, presence: true
    validates :title, length: {in: 1...100}
    validates :user_id, presence: true
    belongs_to :user
    has_many :comments

end
