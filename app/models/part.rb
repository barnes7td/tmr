class Part < ActiveRecord::Base
  attr_accessible :name
  has_many :transactions
  has_many :details, through: :transactions
end
