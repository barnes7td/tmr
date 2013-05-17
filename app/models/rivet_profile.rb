class RivetProfile < ActiveRecord::Base
  include Fraction

  attr_accessible :diameter

  def name
    "#{fractionalize(diameter)}\" Blind Button Head Pop Rivet"
  end
  
end
