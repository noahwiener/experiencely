class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.integer :user_id, null: false
      t.integer :workshop_id, null: false
      t.integer :num_in_party, default: 1

      t.timestamps null: false
    end
    add_index :signups, [:user_id, :workshop_id], unique: true
  end
end
