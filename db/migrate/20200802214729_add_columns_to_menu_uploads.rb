class AddColumnsToMenuUploads < ActiveRecord::Migration[6.0]
  def change
    add_column :menu_uploads, :created_at, :datetime, precision: 6, null: false
    add_column :menu_uploads, :updated_at, :datetime, precision: 6, null: false
  end
end