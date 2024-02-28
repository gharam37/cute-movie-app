class CreateReview < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, default: 1
      t.text :comment
      t.string :user
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
