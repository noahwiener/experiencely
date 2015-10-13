class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.integer :host_id, null: false
      t.string :title, null: false
      t.text :details
      t.date :date
      t.time :start_time
      t.integer :current_attendees, default: 0
      t.integer :max_attendees
      t.float :lat
      t.float :lng
      t.string :location, null: false

      t.timestamps null: false
    end

    add_index :workshops, :title, unique: true
    add_index :workshops, :host_id

  end
end
