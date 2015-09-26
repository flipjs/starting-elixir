fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> "#{c}"
end

IO.puts fizzbuzz.(1, 0, 4)
IO.puts fizzbuzz.(0, 0, 4)
IO.puts fizzbuzz.(0, 5, 4)
IO.puts fizzbuzz.(0, 0, 5)
IO.puts fizzbuzz.(1, 5, 4)

IO.puts "-----------------------------"

remainder = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

IO.puts remainder.(10)
IO.puts remainder.(11)
IO.puts remainder.(12)
IO.puts remainder.(13)
IO.puts remainder.(14)
IO.puts remainder.(15)
IO.puts remainder.(16)
