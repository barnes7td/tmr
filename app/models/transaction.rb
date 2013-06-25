class Transaction < ActiveRecord::Base
  belongs_to :detail
  belongs_to :part
  attr_accessible :quantity, :ship_loose, :part
end
