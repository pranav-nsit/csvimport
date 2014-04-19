class CodeofconductController < ApplicationController
  def index
	@coc=Coc.all
  end

  def import
	begin
		Codeofconduct.import(params[:file])
		redirect_to root_url, notice: "Products imported."
	rescue
		redirect_to root_url, notice: "Invalid CSV File Format."
	end
  end
end
