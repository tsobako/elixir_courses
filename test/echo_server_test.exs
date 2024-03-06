defmodule EchoServerTest do
  use ExUnit.Case, async: true
  use GenServer
  doctest EchoServer

  test "echo server fails when received unknown message" do
    assert_raise FunctionClauseError, fn ->
      # Тест стал чистым
      EchoServer.handle_call(:unknown, {}, {})
    end
  end

  test "echo server works properly with ping message" do
    # И этот тест стал на 99% чистым
    pid = self()
    assert {:reply, {:pong, ^pid}, {}} = EchoServer.handle_call(:ping, {}, {})
  end
end
