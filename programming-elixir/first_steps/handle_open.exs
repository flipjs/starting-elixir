handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("helloworld.txt")) # call with a file that exists
IO.puts handle_open.(File.open("nonexistent")) # call with one that doesn't

