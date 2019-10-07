class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      flash[:notice] = "Recipe successfully created."
      redirect_to recipes_path
    else
      flash[:error] = "Recipe not saved."
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :prep_time, :cooking_methods, :classification, :cooking_methods, :protein_type)
  end
end
