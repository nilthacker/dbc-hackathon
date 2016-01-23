class CreateTripEvents < ActiveRecord::Migration
  def change
    create_table :trip_events do |t|
      t.string :event_type
      t.string :place_id

      t.timestamps null: false
    end
  end
end
