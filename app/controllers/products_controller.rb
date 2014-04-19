class ProductsController < ApplicationController
  def index
	@products=Product.all
  end

  def import
	begin
		Product.import(params[:file])
		redirect_to root_url, notice: "Products imported."
	rescue
		redirect_to root_url, notice: "Invalid CSV File Format."
	end
  end
end
