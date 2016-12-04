class HistoricalNetWorth < ApplicationRecord
  # Direct associations

  belongs_to :net_worth_total,
             :class_name => "NetWorth"

  # Indirect associations

  # Validations

end
