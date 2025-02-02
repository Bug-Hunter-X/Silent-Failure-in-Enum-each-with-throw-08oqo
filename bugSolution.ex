```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, :ok, fn x, acc ->
  if x == 3 do
    {:error, x}
  else
    IO.puts(x)
    acc
  end
end)

case result do
  :ok -> IO.puts("Process completed successfully.")
  {:error, x} -> IO.puts("Error encountered at element: #{x}")
end
```