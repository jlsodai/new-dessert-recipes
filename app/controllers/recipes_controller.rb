class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
      @recipe = Recipe.find(params[:id])
      @comments = Comment.where(recipe_id: @recipe.id)
      @comment = Comment.new
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create   
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

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :description, :ingredients, :directions, :image, :author_id, :dessert_type_id)
    end
end
