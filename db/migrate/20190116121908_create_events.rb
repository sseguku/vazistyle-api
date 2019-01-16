class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :organizer
      t.datetime :event_date
      t.integer :duration
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
