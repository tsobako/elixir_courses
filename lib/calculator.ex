defmodule Calculator do
  @moduledoc """
  The first task for elixir course
  """

  @doc """

  Add two numbers

  ## Examples

    iex> Calculator.add(0, 20)
    20

    iex> Calculator.add(-123, 0)
    -123

    iex> Calculator.add(11, 42)
    53
  """
  def add(x, y), do: x + y

  @doc """

  Substract one number from another

  ## Examples

    iex> Calculator.sub(0, 20)
    -20

    iex> Calculator.sub(-11, 0)
    -11

    iex> Calculator.sub(31, 31)
    0

    iex> Calculator.sub(-12, 12)
    -24
  """
  def sub(x, y), do: x - y

  @doc """

  Multiplies two numbers

  ## Examples

    iex> Calculator.mul(0, 20)
    0

    iex> Calculator.mul(-11, 0)
    0

    iex> Calculator.mul(12, 13)
    156
  """
  def mul(x, y), do: x * y

  @doc """

  Divides one number by another

  Raises `ArithmeticError` exception if divisor equals to zero

  ## Examples

    iex> Calculator.div(0, 21)
    0.0

    iex> Calculator.div(-11, 0)
    ** (ArithmeticError) bad argument in arithmetic expression

    iex> Calculator.div(123, 1)
    123.0

    iex> Calculator.div(12, 4)
    3.0
  """
  def div(x, y), do: x / y
end
