defmodule BasicGuide.Lists do
  @default [1, 2, 3, 4, 5]

  def getFirst() do
    List.first(@default)
  end

  def getLast do
    List.last(@default)
  end

  def getHeadAndTail() do
    [h | t] = @default
    %{head: h, tail: t}
  end

  def sum([h | t], acumulator) do
    sum(t, h + acumulator)
  end

  def sum([], a), do: a

  def add_number(number), do: @default ++ [number]
  def remove_number(number), do: @default -- [number]
end
