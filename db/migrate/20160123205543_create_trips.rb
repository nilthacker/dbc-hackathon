class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :user, null: false
      t.datetime :date, null: false
      t.string :cost, null: false
      t.string :category, null: false
      t.string :intensity, null: false

      t.timestamps null: false
    end
  end
end
