class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:reviews).order(:title)

  end
end
