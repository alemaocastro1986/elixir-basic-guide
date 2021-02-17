defmodule BasicGuide.MapsStruct do
  defstruct a: nil, b: nil

  def create(a, b) do
    %__MODULE__{a: a, b: b}
  end

  def decomposition(term) do
    Map.to_list(term)
    |> Enum.map(fn {k, v} -> {k, {k, v}} end)
  end
end
