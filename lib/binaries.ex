defmodule BasicGuide.Binary do
  def toBinary(number) do
    result = :binary.encode_unsigned(number)
    result
  end

  def toInteger(binary) do
    :binary.decode_unsigned(binary)
  end
end
