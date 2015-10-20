class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :workshop_id, null: false
      t.string :title
      t.text :body
      t.integer :rating, minimum: 1, maximum: 5

      t.timestamps null: false
    end
    add_index :reviews, [:user_id, :workshop_id], unique: true
  end
end
