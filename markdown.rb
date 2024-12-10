language = "ruby#1,3-5,9"

# "3-5" => [3,4,5]
def parse_lines(lines)
  first, last = lines.split("-", 2).map(&:to_i)
  Range.new(first, last || first).to_a
end

language, lines = language.split("#", 2)
highlight_lines = lines.split(",").flat_map { parse_lines(_1) }

p [ language, highlight_lines ]
p [ "ruby", [ 1, 3, 4, 5, 9 ] ]
