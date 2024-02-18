defmodule ElixirCoursesTest do
  use ExUnit.Case
  doctest ElixirCourses

  test "greets the world" do
    assert ElixirCourses.hello() == :world
  end
end
