# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  temp = [a,b,c]
  temp.each {|x|
    if (x < 1)
      raise TriangleError.new("error")
    end
  }
  case temp.uniq.size
    when 1 then :equilateral
    when 2 then
        ordered = temp.sort
        if (ordered[0] + ordered[1] <= ordered[2])
          raise TriangleError.new("sides do not add up")
        end
      :isosceles
    else :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
