defmodule ListFilter do
  require Integer

  def call(list), do: filter(list)

  defp filter(list) do
    list
    |> filter_numbers()
    |> convert_to_numbers()
    |> filter_odd_numbers()
    |> calc_length(0)
  end

  defp filter_numbers(list) do
    Enum.filter(list, fn item -> Integer.parse(item) != :error end)
  end

  defp convert_to_numbers(list) do
    Enum.map(list, fn item ->
      {number, _} = Integer.parse(item)
      number
    end)
  end

  defp filter_odd_numbers(numbers) do
    Enum.filter(numbers, fn number -> Integer.is_odd(number) end)
  end

  defp calc_length([], acc), do: acc

  defp calc_length([_ | tail], acc) do
    acc = acc + 1
    calc_length(tail, acc)
  end
end
