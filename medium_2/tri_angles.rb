def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if angles.inject(:+) != 180 || angles.any?(0)
    return :invalid
  elsif angles.any?(90)
    return :right
  elsif angles.all? {|angle| angle < 90}
    return :acute
  else
    return :obtuse
  end
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid