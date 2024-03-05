defmodule EchoServer do
  use GenServer

  def init(init_state) do
    {:ok, init_state}
  end

  def handle_call(:ping, _, state) do
    {:reply, {:pong, self()}, state}
  end
end
