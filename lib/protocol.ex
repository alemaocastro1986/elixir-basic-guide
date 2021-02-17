defprotocol Animal do
  def breed(arg)
  def grunt(arg)
end

defmodule Wolf do
  @enforce_keys [:name]
  alias __MODULE__
  defstruct name: ""

  def new(name) do
    %__MODULE__{name: name}
  end

  defimpl Animal, for: Wolf do
    def breed(_) do
      "Canine"
    end

    def grunt(_) do
      "Auuuuuuuuu!"
    end
  end
end
