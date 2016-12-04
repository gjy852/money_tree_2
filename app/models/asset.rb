class Asset < ApplicationRecord
  # Direct associations

  belongs_to :net_worth

  belongs_to :asset_type

  # Indirect associations

  # Validations

end
