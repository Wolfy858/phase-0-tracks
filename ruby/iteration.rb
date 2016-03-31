def block_method (bar1, bar2, bar3)
  yield(bar1, bar2, bar3)
  puts "The block is finished running."
end

block_method(1, 2, 5) {|x, y, z| puts "#{x + y + z}"}
