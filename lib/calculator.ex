defmodule Calculator do

  @moduledoc """
  The first task for elixir course
  """

  @doc """
  ## Examples
    iex> Calculator.add(0, 20)
    20
    iex> Calculator.add(-123, 0)
    -123
    iex> Calculator.add(11, 42)
    53
  """
  def add(0, y) do y end
  def add(x, 0) do x end
  def add(x, y) do
    x + y
  end

  @doc """
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
  def sub(0, y) do -y end
  def sub(x, 0) do x end
  def sub(x, x) do 0 end
  def sub(x, y) do
    x - y
  end

  @doc """
  ## Examples
    iex> Calculator.mul(0, 20)
    0
    iex> Calculator.mul(-11, 0)
    0
    iex> Calculator.mul(12, 13)
    156
  """
  def mul(0, _y) do 0 end
  def mul(_x, 0) do 0 end
  def mul(1, y) do y end
  def mul(x, 1) do x end
  def mul(x, y) do
    x * y
  end

  @doc """
  ## Examples
    iex> Calculator.div(0, 21)
    0
    iex> Calculator.div(-11, 0)
    ** (ArithmeticError) bad argument in arithmetic expression
    iex> Calculator.div(123, 1)
    123
    iex> Calculator.div(12, 4)
    3.0
  """
  def div(0, _y) do 0 end
  def div(x, 1) do x end
  def div(x, y) do
    x / y
  end
end
