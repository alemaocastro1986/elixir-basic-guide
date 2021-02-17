defmodule BasicGuide.Imports do
  import BasicGuide.Pipes

  def exec(a, b \\ 0) do
    double_sum(a, b)
  end
end
