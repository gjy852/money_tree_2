class CreateAssetTypes < ActiveRecord::Migration
  def change
    create_table :asset_types do |t|
      t.integer :checking
      t.integer :savings
      t.integer :other_cash_equivalents
      t.integer :brokerage
      t.integer :retirement
      t.integer :business_ownership
      t.integer :real_estate
      t.integer :automobiles
      t.integer :other_use_assets

      t.timestamps

    end
  end
end
