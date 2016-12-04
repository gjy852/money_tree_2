class NetWorth < ApplicationRecord
  # Direct associations

  belongs_to :asset_total,
             :class_name => "Asset"

  # Indirect associations

  # Validations

end
