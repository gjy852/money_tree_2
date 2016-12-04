class User < ApplicationRecord
  # Direct associations

  has_many   :liabilities,
             :dependent => :destroy

  has_many   :net_worths,
             :dependent => :destroy

  # Indirect associations

  has_many   :historical_net_worths,
             :through => :net_worths,
             :source => :historical_net_worths

  # Validations

end
