defmodule BasicGuide.Visibility do
  def to_double(value) do
    sum(value, value)
  end

  defp sum(a, b) do
    a + b
  end
end
