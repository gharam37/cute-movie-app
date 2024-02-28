class ReviewsController < ApplicationController
  def index
    @reviews_by_movie = Review.group(:movie_id).select('movies.title as movie_title, avg(rating) as average_rating').joins(:movie).order('average_rating DESC')
  end
end
