defmodule EventBus.LoggerTest do
  use ExUnit.Case
  doctest EventBus.Logger

  test "greets the world" do
    assert EventBus.Logger.hello() == :world
  end
end
