class NetWorth < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :liabilities,
             :dependent => :destroy

  has_many   :assets,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
