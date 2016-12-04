class Liability < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :liabilities_type,
             :class_name => "LiabilityType"

  has_one    :net_worth,
             :foreign_key => "liabilities_total_id",
             :dependent => :destroy

  # Indirect associations

  # Validations
#user_id: presence
  validates :user_id, :presence => true
#liabilities_type
  validates :liabilities_type, :presence=> true
end
