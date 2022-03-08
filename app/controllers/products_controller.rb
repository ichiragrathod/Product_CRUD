class ProductsController < ApplicationController

    def index
        @products=Product.all
    end


    def new
        @product=Product.new
    end


    def create
      @product = Product.new(params.require(:product).permit(:name,:description,:stock,:price))
      
      if @product.save
        flash[:notice]="Product details was Added successfully."
        redirect_to product_path(@product)
      else
        render 'new'
      end

    end


    def show
        @product=Product.find(params[:id])
    end





    def edit
        @product=Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        if @product.update(params.require(:product).permit(:name,:description,:stock,:price))
            flash[:notice]="Product updated successfully."
            redirect_to @product
        else
            render 'edit'
        end
    end



    def destroy
        
        @product=Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

end
