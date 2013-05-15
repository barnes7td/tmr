class Detail < ActiveRecord::Base
  attr_accessible :name
  has_many :transactions
  has_many :parts, through: :transactions
end
