add_n = fn a ->
  fn b ->
    a + b
  end
end

add_two = add_n.(2)
IO.puts add_two.(3)
