class CreateStaff < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :name
      # staff can be a director, writer, or actor
      t.string :role # TODO: Make this an enum
      t.string :filming_location

      t.timestamps
    end
  end
end
