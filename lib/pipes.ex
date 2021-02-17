defmodule BasicGuide.Pipes do
  def double_sum(a, b) do
    BasicGuide.MathOperations.Sum.execute(a, b)
    |> BasicGuide.MathOperations.Mult.execute(2)
  end
end
