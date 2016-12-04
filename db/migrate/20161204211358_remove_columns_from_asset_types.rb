class RemoveColumnsFromAssetTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :asset_types, :checking, :integer
    remove_column :asset_types, :savings, :integer
    remove_column :asset_types, :other_cash_equivalents, :integer
    remove_column :asset_types, :brokerage, :integer
    remove_column :asset_types, :retirement, :integer
    remove_column :asset_types, :business_ownership, :integer
    remove_column :asset_types, :real_estate, :integer
    remove_column :asset_types, :automobiles, :integer
    remove_column :asset_types, :other_use_assets, :integer
  end
end
