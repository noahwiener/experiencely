class AddBodyToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :body, :text
  end
end
