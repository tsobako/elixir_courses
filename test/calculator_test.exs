defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "perform combined operation" do
    assert Calculator.div(Calculator.add(1230, 3214), 11) == 404
  end
end
