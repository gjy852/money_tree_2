class HistoricalNetWorth < ApplicationRecord
  # Direct associations

  belongs_to :net_worth_total,
             :class_name => "NetWorth"

  # Indirect associations

  has_one    :user,
             :through => :net_worth_total,
             :source => :user

  # Validations

end
