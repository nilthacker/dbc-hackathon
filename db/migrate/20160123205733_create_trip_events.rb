class CreateTripEvents < ActiveRecord::Migration
  def change
    create_table :trip_events do |t|
      t.string :event_type, null: false
      t.string :place_id, null: false
      t.references :trip, null: false

      t.timestamps null: false
    end
  end
end
