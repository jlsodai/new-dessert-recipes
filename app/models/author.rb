class Author < ActiveRecord::Base
    has_many :recipes
    # validates :name, presence: true, length: { maximum: 50 }
    # validates :bio, presence: true
    # validates :password, presence: true
    # validates :username, presence: true
    # validates :expertise, presence: true
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    
    has_attached_file :image, styles: { medium: "400x400#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
