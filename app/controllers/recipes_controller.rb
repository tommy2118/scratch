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
      flash[:success] = "Recipe successfully created."
      redirect_to recipes_path
    else
      flash[:error] = "Recipe not saved."
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :prep_time, :cook_time, :classification, :cooking_method, :protein_type)
  end
end
