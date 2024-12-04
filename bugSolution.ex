```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three)
    end
    IO.puts(x)
  end)
catch
  :three -> IO.puts("Caught :three")
end

#Alternative using Enum.reduce:
Enum.reduce(list, :ok, fn x, acc ->
  if x == 3 do
    :three
  else
    IO.puts(x)
    acc
  end
end)
```