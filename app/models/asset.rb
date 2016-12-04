class Asset < ApplicationRecord
  # Direct associations

  has_one    :net_worth,
             :foreign_key => "asset_total_id",
             :dependent => :destroy

  belongs_to :asset_type

  # Indirect associations

  # Validations
#user_id: presence
validates :user_id, :presence => true
#asset_type
validates :asset_type, :presence=> true

end
