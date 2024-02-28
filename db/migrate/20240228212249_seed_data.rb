class SeedData < ActiveRecord::Migration[6.0]
  require 'csv'
  def up
    # read movies csv from file
    movies = CSV.read(Rails.root.join('lib/assets', 'movies.csv'), headers: true)
    movies.each do |movie|
      # create movie
      m = Movie.find_or_initialize_by(title: movie['Movie'], description: movie['Description'], year: movie['Year'],
                                      country: movie['Country'])

      m.save

      # create staff from actors and directors
      actor = Staff.find_or_initialize_by(name: movie['Actor'])
      actor.save!
      director = Staff.find_or_initialize_by(name: movie['Director'])
      director.save!
      m.staffs << actor
      m.staffs << director
    end

    # read reviews csv from file
    reviews = CSV.read(Rails.root.join('lib/assets', 'reviews.csv'), headers: true)
    reviews.each do |review|
      # create review
      r = Review.create(comment: review['Review'],
                        movie_id: Movie.find_by(title: review['Movie']).id, rating: review['Stars'], user: review['User'])
      r.save
    end
  end

  def down
    Staff.destroy_all
    Review.destroy_all
    Movie.destroy_all
  end
end
