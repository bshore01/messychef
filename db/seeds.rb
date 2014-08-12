# User.destroy_all
# Cookbook.destroy_all
# RecipeCookbook.destroy_all
# Recipe.destroy_all
# Direction.destroy_all
# RecipeIngredientUnit.destroy_all
# Ingredient.destroy_all
# Unit.destroy_all

class Scraper 
  attr_accessor :page

  def initialize(url)
    @page = Nokogiri::HTML(open(url))
  end 

  def create_recipe_from_page
    # binding.pry
    
    unless Recipe.find_by(title: page.css('h1#itemTitle').text)
      recipe = Recipe.new
      recipe.scraped = true
      recipe.title = page.css('h1#itemTitle').text
      recipe.description = page.css('span#lblDescription').text
      recipe.recipe_image_file_name = page.css('img#imgPhoto').attribute('src').value

      page.css('div.ingred-left li p.fl-ing').each do |ingredient|
        i = Ingredient.find_or_create_by(name: ingredient.css('span#lblIngName').text)
        u = Unit.find_or_create_by(unit: ingredient.css('span#lblIngAmount').text)

        recipe.recipe_ingredient_units.build(ingredient_id: i.id, unit_id: u.id)
      end 

      i = 0
      page.css('div.directLeft li span').each do |direction|
        recipe.directions.build(sequence: i+1,  description: direction.text)
        i += 1
      end 

      recipe.save
    end
  end

  def move_to_the_next_page
    next_page = page.css('div#divGoNext a').attribute('href').value
    self.page = Nokogiri::HTML(open("http://allrecipes.com/#{next_page}"))
  end  

  def recursively_call_scraper(number_of_times)
    i = 0

    while i < number_of_times
      self.create_recipe_from_page
      self.move_to_the_next_page
      i += 1
    end 
  end
end 

def call_scraper(url)
  Scraper.new(url).recursively_call_scraper(50)
end 

call_scraper("http://allrecipes.com/Recipe/Healthy-Garden-Salad/Detail.aspx?event8=1&prop24=SR_Thumb&e11=healthy&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i1")
call_scraper("http://allrecipes.com/Recipe/Banana-Crumb-Muffins/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Guacamole/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Award-Winning-Soft-Chocolate-Chip-Cookies/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Annies-Fruit-Salsa-and-Cinnamon-Chips/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Eggplant-Parmesan-II/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Chicken-Pot-Pie-IX/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Bacon-Roasted-Chicken-with-Potatoes/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Awesome-Slow-Cooker-Pot-Roast/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Slow-Cooker-Pulled-Pork/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Slow-Cooker-Chicken-and-Dumplings/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Alysons-Broccoli-Salad-2/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Classic-Macaroni-Salad/Detail.aspx?evt19=1")
call_scraper("http://allrecipes.com/Recipe/Mexican-Bean-Salad/Detail.aspx?evt19=1")