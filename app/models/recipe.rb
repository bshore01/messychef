class Recipe < ActiveRecord::Base
  has_many :recipe_cookbooks
  has_many :cookbooks, through: :recipe_cookbooks
  belongs_to :creator, class_name: "User"
  has_many :directions
  has_many :recipe_ingredient_units
  has_many :ingredients, through: :recipe_ingredient_units

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