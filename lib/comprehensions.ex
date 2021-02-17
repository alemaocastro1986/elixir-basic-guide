defmodule BasicGuide.Comprehensions do
  def to_double(list) do
    for x <- list, do: x * 2
  end

  def to_exponential(list) do
    for x <- list, do: x * x
  end

  def multiplication_table(number) do
    for x <- 1..10, do: IO.puts("#{number} * #{x} = #{number * x}")
  end

  def multiplication_table() do
    for x <- 1..5, y <- 1..5, do: {x, y, x * y}
  end

  def to_flatten(list) do
    List.flatten(list)
  end
end
