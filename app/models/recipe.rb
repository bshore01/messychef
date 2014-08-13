class MyValidator < ActiveModel::Validator
  def validate(new_recipe)
    if new_recipe.title.length < 2
      new_recipe.errors[:base] << "Must have a valid title."
    end
    if new_recipe.description.length < 2
      new_recipe.errors[:base] << "Must have a valid description."
    end 
    new_recipe.recipe_ingredient_units.each do |riu|
      if riu.ingredient.name.length < 2 && !new_recipe.errors[:base].include?("Ingredients must have a valid name.")
        new_recipe.errors[:base] << "Ingredients must have a valid name."
      end 
      if riu.unit.unit.length < 2 && !new_recipe.errors[:base].include?("Ingredients must have a valid unit.")
        new_recipe.errors[:base] << "Ingredients must have a valid unit."
      end 
    end 
    new_recipe.directions.each do |direction|
      if direction.description.length < 2 && !new_recipe.errors[:base].include?("Directions must have a valid description.")
        new_recipe.errors[:base] << "Directions must have a valid description."
      end 
    end 
  end 
end 

class Recipe < ActiveRecord::Base
  has_many :recipe_cookbooks
  has_many :cookbooks, through: :recipe_cookbooks
  belongs_to :creator, class_name: "User"
  has_many :directions
  has_many :recipe_ingredient_units
  has_many :ingredients, through: :recipe_ingredient_units

  validates_with MyValidator

  # Paperclip (upload image)
  has_attached_file :recipe_image , :styles => { :medium => "250x250>" },
                    # :default_url => "/images/:style/bullet.png",
                    # :default_url => ":rails_root/public/simon_point.jpg",
                    # url for images
                    :url => "/assets/recipes/:id/:basename.:extension"
                    # :url => "https://messychefrecipeimage.s3.amazonaws.com"
                    # path to store images
                    # :path => ":rails_root/public/assets/recipes/:id/:basename.:extension"
  # validates_attachment_content_type :recipe_image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :recipe_image, :content_type => ['image/jpeg', 'image/png']

  def make_rius_from_params(recipe_params)
    recipe_params[:recipe_ingredient_units].each do |riuId, hash|
      # find or create ingredients & units, associate to recipe
      @ingredient = Ingredient.find_or_create_by(name: hash[:ingredient].downcase.strip.gsub(/\s+/, " "))
      @unit = Unit.find_or_create_by(unit: hash[:unit].downcase.strip.gsub(/\s+/, " "))
      self.recipe_ingredient_units.build(ingredient_id: @ingredient.id, unit_id: @unit.id, amount: hash[:amount])
    end
  end

  def make_directions_from_params(recipe_params)
    recipe_params[:directions].each.with_index do |hash, index|
      # create directions, associate to recipe
      self.directions.build(:sequence => index+1, :description => hash[1][:description])
    end
  end 

end
