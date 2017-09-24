class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :band, null: false
      t.string :venue, null: false
      t.date :date
      t.time :start_time

      t.timestamps
    end
  end
end
