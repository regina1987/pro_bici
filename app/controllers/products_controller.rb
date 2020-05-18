class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cts, only: [:new, :edit, :create, :update]
   before_action :set_pr, only: [:show, :edit, :update, :destroy]

   def index
     @prs=Product.all
   end

    def new
      @pr=Product.new
    end

    def create
      @pr=Product.new(pr_params)
      @pr.save
        redirect_to root_path
    end

    def destroy
      @or.destroy
      redirect_to root_path
    end
    def edit
    end

    def update
      @pr.update(pr_params)
      redirect_to root_path
    end

    private
    def set_pr
      @pr=Product.find(params[:id])
    end

    def pr_params
        params.require(:product).permit(:brand, :code, :name, :quantity, :price, :category_id)
    end
    def set_cts
       @cts_array=Category.order(:name).pluck(:name, :code,  :iden)
     end

end
