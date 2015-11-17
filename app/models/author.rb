class Author < ActiveRecord::Base
    has_many :recipes
    # validates :name, presence: true
    # validates :bio, presence: true
    # validates :password, presence: true
    # validates :username, presence: true
    # validates :email, presence: true
    # validates :expertise, presence: true
end
