class Triangle
  attr_accessor :type

  def initialize(side_1, side_2, side_3)
    # The triangle is invalid by default
    @type = :invalid

    if valid?(side_1, side_2, side_3)
      if (side_1 == side_2) && (side_2 == side_3)
        @type = :equilateral
      elsif (side_1 == side_2) || (side_2 == side_3) || (side_1 == side_3)
        @type = :isoceles
      else
        @type = :scalene
      end
    end
  end

  private

  def valid? (side_1, side_2, side_3)
    # No side should be 0
    return false if (side_1 * side_2 * side_3 == 0)

    # No side should be -ve
    return false if (side_1 < 0 || side_2 < 0 || side_3 < 0)

    # Sum of two sides should be greater than the third side
    return false if (side_1 + side_2 <= side_3 ||
                     side_1 + side_3 <= side_2 ||
                     side_2 + side_1 <= side_1)

    # Return true in other cases
    return true
  end
end

