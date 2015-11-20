class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
      @recipe = Recipe.find(params[:id])
      @comments = Comment.where(recipe_id: @recipe.id)
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    
    #@author = Author.find(params[:author_id])
    @author = Author.find(2)
    @recipe = @author.recipes.create(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @author, notice: 'recipe was successfully created.' }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'recipe was successfully updated.' }
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
    @author = Author.find(params[:author_id])
    @recipe.destroy
    
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'recipe was successfully destroyed.' }
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
      params.require(:recipe).permit(:name, :description, :ingredients, :directions, :image, :author_id)
    end
end
