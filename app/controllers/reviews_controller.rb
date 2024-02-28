class ReviewsController < ApplicationController
  def index

    @reviews = Review.joins(:movie).select("movies.title as movie_title, reviews.rating as rating, reviews.comment as comment").order("movies.title ASC, reviews.average_rating DESC")

  end
end
