defmodule BasicGuide.File do
  @spec read_csv(
          binary
          | maybe_improper_list(
              binary | maybe_improper_list(any, binary | []) | char,
              binary | []
            )
        ) :: list
  def read_csv(file) do
    [h | t] =
      File.read!(file)
      |> String.split("\n", trim: true)
      |> Enum.map(fn v -> String.split(v, ",") end)

    [k1, k2] = h

    t
    |> Enum.map(fn x ->
      [p, q] = x
      %{k1 => p, k2 => String.to_integer(q)}
    end)
  end
end
