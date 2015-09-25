defmodule FactorialTest do
  use ExUnit.Case

  test "factorial of n" do
    test_values = [
      {1, 1},
      {2, 2},
      {3, 6},
      {4, 24},
      {5, 120},
      {6, 720}
    ]

    Enum.each test_values, fn {input, result} -> assert Factorial.factorial(input) == result end
  end
end
