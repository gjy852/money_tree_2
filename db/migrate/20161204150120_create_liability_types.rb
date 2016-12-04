class CreateLiabilityTypes < ActiveRecord::Migration
  def change
    create_table :liability_types do |t|
      t.integer :credit_cards
      t.string :other_current_liabilities
      t.integer :mortgages
      t.integer :student_loans
      t.string :automobile_loans
      t.integer :other_long_term_liabilities

      t.timestamps

    end
  end
end
