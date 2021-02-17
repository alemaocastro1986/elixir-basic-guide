defmodule BasicGuide.Recursive do
  import BasicGuide.MultiClause

  @default [
    {:director, 1000},
    {:manager, 1000},
    {:trainee, 1000},
    {:director, 3000},
    {:manager, 3000}
  ]
  def sum([h | t]) do
    h + sum(t)
  end

  def sum([]), do: 0

  def sum_recursive(list) do
    Enum.map(list, fn e -> bonus_salary(e) end)
    |> sum()
  end

  def sum_reduce(list) do
    Enum.map(list, fn e -> bonus_salary(e) end)
    |> Enum.reduce(0, fn value, acc -> acc + value end)
  end
end
