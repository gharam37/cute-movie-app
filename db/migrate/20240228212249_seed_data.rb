class SeedData < ActiveRecord::Migration[7.0]
  def up
    # read from movies csv
    require 'csv'
    csv_text = File.read(Rails.root.join('lib', 'assets', 'movies.csv'))

    csv_text = csv_text.encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
    csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
    csv.each do |row|
      m = Movie.find_or_initialize_by(title: row['Movie'], year: row['Year'], description: row['Description'],
                                      country: row['Country'])

      m.save

      # create unqiue staff based on director and actor tables
      director = Staff.find_or_create_by(name: row['Director'], role: 'director')
      actor = Staff.find_or_create_by(name: row['Actor'], role: 'actor')

      director.movies << m
      actor.movies << m
    end

    # read from reviews csv
    csv_text = File.read(Rails.root.join('lib', 'assets', 'reviews.csv'))
    csv_text = csv_text.encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
    csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
    csv.each do |row|
      m = Movie.find_by(title: row['Movie'])
      m.reviews.create(comment: row['Review'], comment: row['Review'], user: row['User'], rating: row['Stars'])
    end
  end

  def down
    Movie.destroy_all
    Staff.destroy_all
    Review.destroy_all
  end
end
