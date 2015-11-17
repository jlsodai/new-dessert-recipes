class Recipe < ActiveRecord::Base
    belongs_to :author
    has_many :comments
    belongs_to :dessert_type
end