defmodule ListFilter do
  def call(list) do
    list
    |> Enum.map(fn elem -> to_string(elem) end)
    |> Enum.map(fn elem -> Integer.parse(elem) end)
    |> Enum.map(fn
      {num, ""} -> num |> rem(2) |> abs
      :error -> 0
    end)
    |> Enum.sum()
  end
end
