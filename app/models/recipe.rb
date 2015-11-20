class Recipe < ActiveRecord::Base
    belongs_to :author
    has_many :comments
    belongs_to :dessert_type
    
    has_attached_file :image, styles: { medium: "400x400#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end