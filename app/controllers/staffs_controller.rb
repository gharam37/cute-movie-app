class StaffsController < ApplicationController
  def index
    @query = params[:query]
    @staffs = Staff.all
    return unless @query.present?

    @staffs = Staff.where('name LIKE ?', "%#{@query}%")
  end
end
