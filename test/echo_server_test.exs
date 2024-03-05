defmodule EchoServerTest do
  use ExUnit.Case, async: true
  use GenServer
  doctest EchoServer

  test "echo server fails when received unknown message" do
    {:ok, pid} = GenServer.start_link(EchoServer, {})

    # По задумке это должно работать, но я так понимаю, что это неправильно
    assert_raise FunctionClauseError, fn ->
      GenServer.call(pid, :foobar)
    end
  end

  test "echo server works properly with ping message" do
    {:ok, pid} = GenServer.start_link(EchoServer, {})
    message = GenServer.call(pid, :ping)
    assert message == {:pong, pid}
  end
end
