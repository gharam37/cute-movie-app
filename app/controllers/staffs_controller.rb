class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end

  def search
    @query = params[:query]
    @staffs = Staff.where('name LIKE ?', "%#{@query}%")

    puts @staffs.inspect

    # Re-render the index view with the filtered results
    render :index
  end
end
