class Author < ActiveRecord::Base
    has_many :recipes
    # validates :name, presence: true
    # validates :bio, presence: true
    # validates :password, presence: true
    # validates :username, presence: true
    # validates :email, presence: true
    # validates :expertise, presence: true
    
    has_attached_file :image, styles: { medium: "400x400#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
