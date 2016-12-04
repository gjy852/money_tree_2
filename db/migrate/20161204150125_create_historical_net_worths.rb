class CreateHistoricalNetWorths < ActiveRecord::Migration
  def change
    create_table :historical_net_worths do |t|
      t.integer :user_id
      t.date :date
      t.integer :asset_total_id
      t.integer :liabilities_total_id
      t.integer :net_worth_total_id

      t.timestamps

    end
  end
end
