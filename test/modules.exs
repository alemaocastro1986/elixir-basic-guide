defmodule BasicGuideTest do
  use ExUnit.Case

  describe "Basic Guide Modules tests" do
    test "Shold return a sum of two numbers" do
      assert BasicGuide.Modules.sum(1, 3) == 4
    end
  end
end
