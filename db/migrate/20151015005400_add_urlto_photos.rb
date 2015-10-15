class AddUrltoPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :url, :string
  end
end
