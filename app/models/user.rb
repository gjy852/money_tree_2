class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
  # validates :username, :presence => true, :uniqueness => true

end
