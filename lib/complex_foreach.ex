defmodule BasicGuide.ComplexForEach do
  def exec() do
    for x <- 1..10, y <- 1..10, into: %{}, do: {{x, y}, x * y}
  end

  def exec_equals() do
    for x <- 1..10, y <- 1..10, x == y, into: %{}, do: {{x, y}, x * y}
  end
end
