class Part < ActiveRecord::Base
  attr_accessible :name
  has_many :transactions
  has_many :details, through: :transactions
  belongs_to :profile, polymorphic: true

  delegate :name, to: :profile, allow_nil: :true
  # delegate :quantity, to: :profile
  # delegate :ship_loose, to: :profile

end
