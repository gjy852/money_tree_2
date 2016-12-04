class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.integer :liabilities_type_id
      t.integer :user_id
      t.integer :liabilities_value
      t.integer :net_worth_id

      t.timestamps

    end
  end
end
