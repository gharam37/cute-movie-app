class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :description
      t.string :country
      # array for filming locations

      t.timestamps
    end
  end
end
