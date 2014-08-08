class Recipe < ActiveRecord::Base
  has_many :recipe_cookbooks
  has_many :cookbooks, through: :recipe_cookbooks
  belongs_to :creator, class_name: "User"
  has_many :directions
  has_many :recipe_ingredient_units
  has_many :ingredients, through: :recipe_ingredient_units

  # Paperclip (upload image)
  has_attached_file :recipe_image , :styles => { :medium => "300x300>" }, 
                    :default_url => "/images/:style/bullet.png",
                    # :default_url => ":rails_root/public/simon_point.jpg",
                    # url for images
                    :url => "/assets/recipes/:id/:basename.:extension"
                    # path to store images
                    # :path => ":rails_root/public/assets/recipes/:id/:basename.:extension"
  # validates_attachment_content_type :recipe_image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :recipe_image, :content_type => ['image/jpeg', 'image/png']
end
