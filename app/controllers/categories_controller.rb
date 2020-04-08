class CategoriesController < ApplicationController


  
  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)
    if @category.save
      redirect_to root_path, notice: '登録しました'
    else
      render :new
  end

private
  def category_params
    params.require(:post).permit(:post_ids: [])
  end

end

