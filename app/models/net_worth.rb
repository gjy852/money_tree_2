class NetWorth < ApplicationRecord
  # Direct associations

  has_many   :historical_net_worths,
             :foreign_key => "net_worth_total_id",
             :dependent => :destroy

  belongs_to :asset_total,
             :class_name => "Asset"

  # Indirect associations

  # Validations

end
