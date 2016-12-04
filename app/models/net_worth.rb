class NetWorth < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :liabilities_total,
             :class_name => "Liability"

  has_many   :historical_net_worths,
             :foreign_key => "net_worth_total_id",
             :dependent => :destroy

  belongs_to :asset_total,
             :class_name => "Asset"

  # Indirect associations

  # Validations
  #user_id: presence
  validates :user_id, :presence => true

end
