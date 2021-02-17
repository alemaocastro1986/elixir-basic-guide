defmodule BasicGuide.MathOperations do
  defmodule Sum do
    def execute(a, b) do
      a + b
    end
  end

  defmodule Sub do
    def execute(a, b), do: a - b
  end

  defmodule Mult do
    def execute(a, b) do
      a * b
    end
  end
end
