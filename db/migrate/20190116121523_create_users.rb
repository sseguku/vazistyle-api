class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :club_status
      t.string :location
      t.string :access_level
      t.binary :image

      t.timestamps
    end
  end
end
