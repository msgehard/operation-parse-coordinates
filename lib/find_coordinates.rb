FindCoordinates = ->(map) do
  lines = map.split("\n")
  lines_without_border = lines.reject { |line| line.start_with?("+") }.map { |line| line.gsub("|", "") }

  y_index = lines_without_border.find_index { |line| line.include?("X") }
  x_index = lines_without_border[y_index].chars.find_index{|char| char == "X"}

  [x_index, -y_index]
end