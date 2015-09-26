fullname = fn first ->
  fn second ->
    "#{first} #{second}"
  end
end

IO.puts fullname.('Felipe').('Apostol')
IO.puts fullname.('Ronneil').('Camara')
