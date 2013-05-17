class FastenerProfile < ActiveRecord::Base
  include Fraction

  attr_accessible :diameter, :length, :material
  has_one :part, as: :profile, dependent: :destroy

  def name
    # "#{diameter.to_r}\" #{length.to_r}\"
    "#{fractionalize(diameter)}\" #{material} Screw X #{fractionalize(length)}\" LG."
  end

end