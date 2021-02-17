defmodule BasicGuide.Guards do
  def number_is_valid(x) when is_number(x) and x < 0, do: :negative
  def number_is_valid(0), do: :zero
  def number_is_valid(x) when is_number(x) and x > 0, do: :positive
end
