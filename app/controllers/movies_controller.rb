class MoviesController < ApplicationController
  def index
    # @movies = Movie.includes(:reviews).order(:title)
    @movies = Movie.joins(:reviews).select('movies.title as title , movies.id as movie_id, avg(reviews.rating) as average_rating').group(:movie_id).order('average_rating DESC')
  end
end
