class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:category_slug])
    @items = @category.items
  end
end
