defmodule BasicGuide.Alias do
  # Define um alias para outro módulo
  alias BasicGuide.Arity, as: S

  def exec(a, b \\ 0) do
    S.sum(a, b)
  end
end
