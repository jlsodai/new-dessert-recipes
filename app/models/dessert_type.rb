class DessertType < ActiveRecord::Base
    has_many :recipes
    
    has_attached_file :image, styles: { dessert_type_thumb: "350x250#", medium: "400x400#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
