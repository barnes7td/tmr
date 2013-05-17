module Fraction

  def mix(number)
    p number.denominator
    if number.denominator == 1
      number.to_i
    elsif (number.numerator > number.denominator) && (number.denominator != 1)
      "#{number.numerator / number.denominator} #{number.numerator % number.denominator}/#{number.denominator}"
    else
      number
    end
  end

  def fractionalize(number)
    num = Rational(number.to_s)
    mix(num)
  end

end