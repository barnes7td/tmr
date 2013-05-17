class Part < ActiveRecord::Base
  attr_accessible :name
  has_many :transactions
  has_many :details, through: :transactions
  belongs_to :profile, polymorphic: true

  delegate :name, to: :profile

end
