defmodule BasicGuide.Variables do
  @pi 3.141519
  @hello "Hello"

  def circle_area(radius) do
    @pi * :math.pow(radius, 2)
  end

  def welcome(name) do
    "#{@hello} #{name}"
  end
end
