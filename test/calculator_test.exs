defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "addition does not fail when both numbers are large" do
    assert Calculator.add(10 ** 1024, 10 ** 1024) == 2 * 10 ** 1024
  end

  test "multiplication does not fail when both numbers are large" do
    assert Calculator.mul(10 ** 1024, 10 ** 1024) == 10 ** 2048
  end

  test "multiplication fails with large inverse numbers" do
    assert_raise ArithmeticError, fn ->
      Calculator.mul(10 ** 1_000_000, 1 / 10 ** 1_000_000)
    end
  end
end
