times_2 = fn n -> n * 2 end

apply = fn value, fun -> fun.(value) end

IO.puts apply.(5, times_2)
