class StockProfile < ActiveRecord::Base
  include Fraction

  attr_accessible :dimensions, :length, :material
  has_one :part, as: :profile, dependent: :destroy

  def name
    "#{dimensions} #{material} Screw X #{fractionalize(length)}\" LG."
  end

end
