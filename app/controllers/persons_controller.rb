class PersonsController < ApplicationController
  def index
  	@persons = Person.all
  end

  def import
	  if params[:file].present?
	  	Person.import(params[:file])
			flash[:success] = 'CSV uploaded successfully!'
		else
			flash[:error] = 'Please select file'
		end
		redirect_to root_url
	end
end
