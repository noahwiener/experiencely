class AddPriceToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :price, :string
  end
end
