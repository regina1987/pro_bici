class CategoriesController < ApplicationController
before_action :authenticate_user!
 before_action :set_ct, only: [ :edit, :update, :destroy]

 def index
   @cts=Category.all
 end

  def new
    @ct=Category.new
  end

  def create
    @ct=Category.new(ct_params)
    @ct.save
    redirect_to categories_index_path
  end

  def destroy
    @ct.destroy
    redirect_to categories_index_path
  end
  def edit
  end



  def update
    @ct.update(ct_params)
    redirect_to categories_index_path
  end

  private
  def set_ct
    @ct=Category.find(params[:id])
  end

  def ct_params
      params.require(:category).permit(:iden, :code, :name)
  end


end
