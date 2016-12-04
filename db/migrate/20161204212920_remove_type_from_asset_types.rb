class RemoveColumnsFromAssetTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :asset_types, :asset_name, :string
  end
end
