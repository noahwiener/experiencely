class ChangeTimetoString < ActiveRecord::Migration
  def change
    change_column :workshops, :start_time, :string
  end
end
