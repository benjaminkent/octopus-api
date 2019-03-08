class CreateEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :venue, null: false
      t.datetime :date, null: false
    end
  end
end
