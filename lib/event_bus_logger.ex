defmodule EventBus.Logger do
  @moduledoc """
  EventBus.Logger
  """

  alias EventBus.Logger.Worker.Console

  @doc """
  Fetch event data

  ## Examples

      EventBus.Logger.process({:hello_received, "123"})

  """
  @spec process({atom(), String.t() | integer()}) :: :ok
  defdelegate process(event_shadow),
    to: Console,
    as: :process
end
