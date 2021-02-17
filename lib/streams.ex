defmodule BasicGuide.Streams do
  @default_list [
    "Andrius Cunha",
    "Debora Pena",
    "Aristides Fraga"
  ]

  def exec(list \\ @default_list) do
    to_filter(list)
    |> to_map()
    |> to_index()
    |> to_print()
  end

  def to_index(list) do
    Enum.with_index(list)
  end

  defp print_name(list) do
    Enum.each(list, fn {v, idx} -> IO.puts("#{idx + 1}. #{v}") end)
  end

  def to_filter(list) do
    Enum.filter(list, fn el -> is_number(el) and el > 0 end)
  end

  def to_map(list) do
    Enum.map(list, fn el -> {el, :math.sqrt(el)} end)
  end

  def to_print(list) do
    Enum.each(
      list,
      fn {{el, result}, idx} ->
        IO.puts("#{idx + 1}. sqrt(#{el}) = #{result}")
      end
    )
  end
end
