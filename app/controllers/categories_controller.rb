class CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def create
    category = Category.create(category_params)
    if category.persisted?
      render json: category
    end
  end

  def show
    category = Category.find(params[:id])
    render json: category
  end

  def update
    category = Category.find(params[:id])
    category.update(update_params)
    render json: category
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:title, :description, :category_type)
  end

  def update_params
    params.require(:category).permit(:title, :description, :category_type)
  end
end
