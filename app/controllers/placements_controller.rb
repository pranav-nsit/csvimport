class PlacementsController < ApplicationController
  def index
 	@placements=Placement.all
  end

  def import
    begin
		Placement.import(params[:file])
		redirect_to root_url, notice: "Products imported."
	rescue
		redirect_to root_url, notice: "Invalid CSV File Format."
	end
  end
end
