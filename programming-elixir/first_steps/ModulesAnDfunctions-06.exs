defmodule Guess do

  #define min and max range
  #get number in between min and max
  #check if given number is equal result

  def what_im_thinking_of(n, min..max) do
    search(n, min, max)
  end

  def search(n, min, _) when n == min do
    " It is a #{min}"
  end

  def search(n, min, _) when n < min do
    " Number cannot be less than #{min}"
  end

  def search(n, _, max) when n == max do
    " It is a #{max}"
  end

  def search(n, _, max) when n > max do
    " Number cannot be greater than #{max}"
  end

  def search(n, min, max) when n == div(min+max, 2) do
    " It is a #{div(min+max, 2)}"
  end

  def search(n, min, max) when n > div(min+max, 2) do
    search(n, div(min+max, 2), max)
  end

  def search(n, min, max) when n < div(min+max, 2) do
    search(n, min, div(min+max, 2))
  end

end

min = 1
max = 1000

message = "I'm thinking of a number between #{min} and #{max}..."
IO.puts message
IO.puts Guess.what_im_thinking_of(2, min..max)
IO.puts Guess.what_im_thinking_of(1, min..max)
IO.puts Guess.what_im_thinking_of(1000, min..max)
IO.puts Guess.what_im_thinking_of(223, min..max)
IO.puts Guess.what_im_thinking_of(854, min..max)
IO.puts Guess.what_im_thinking_of(456, min..max)
IO.puts Guess.what_im_thinking_of(-2, min..max)
IO.puts Guess.what_im_thinking_of(1002, min..max)
