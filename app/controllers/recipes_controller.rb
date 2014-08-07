class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    # set creator_id to user
  end

  # GET /recipes/1/edit
  def edit
  end

  def command_detect
    message = params[:cmd]
    wit = Wit::Client.new ENV["WIT_AI_TOKEN"]
    results = wit.message(message)
    @intent = results["outcomes"][0]["intent"]
    @entity = results["outcomes"][0]["entities"]
    @confidence = results["outcomes"][0]["confidence"]
    
    if @confidence >= 0.50 && @intent == "directions" && @entity.keys.first == "next" 
        render json: "next"

    elsif @confidence >= 0.50 && @intent == "directions" && @entity.keys.first == "back"
        render json: "back"
      
    else
        render json: ""
    end
  end

  # POST /recipes
  # POST /recipes.json
  def create
    raise params.inspect
    @recipe = Recipe.new(
      :title => recipe_params[:title],
      :description => recipe_params[:description],
    )

    recipe_params[:recipe_ingredient_units].each do |index, hash|
      @recipe.recipe_ingredient_units.build(hash)
    end 
    
    recipe_params[:directions].each do |index, hash|
      @recipe.directions.build(:sequence => index.to_i+1, :description => hash[:description])
    end

    respond_to do |format|
      if @recipe.save 
        format.html { redirect_to recipes_path, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :description, :recipe_ingredient_units => [:amount, :ingredient_id, :unit_id], :directions => [:description] )
    end
end
