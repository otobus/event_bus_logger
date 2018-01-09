defmodule EventBus.Logger.Supervisor.Console do
  @moduledoc """
  A supervisor for Console Logger
  """

  use Supervisor
  alias EventBus.Logger.Worker.Console, as: ConsoleWorker

  @doc false
  def start_link,
    do: Supervisor.start_link(__MODULE__, [], name: __MODULE__)

  @doc false
  def init([]) do
    children = [
      worker(ConsoleWorker, [], id: make_ref(), restart: :permanent)
    ]

    opts = [strategy: :one_for_one, name: __MODULE__]

    supervise(children, opts)
  end
end
