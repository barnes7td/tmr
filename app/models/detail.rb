class Detail < ActiveRecord::Base
  attr_accessible :name, :parts_attributes, :transactions_attributes
  has_many :transactions
  has_many :parts, through: :transactions
  accepts_nested_attributes_for :parts, allow_destroy: true
  accepts_nested_attributes_for :transactions, allow_destroy: true
end
