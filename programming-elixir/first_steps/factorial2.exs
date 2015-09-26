defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n - 1)
  def of(n) when n < 0, do: "Can't evaluate..."
end

IO.puts Factorial.of(5)
IO.puts Factorial.of(-5)
