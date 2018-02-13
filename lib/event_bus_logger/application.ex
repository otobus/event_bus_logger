defmodule EventBus.Logger.Application do
  @moduledoc """
  The EventBus.Logger Application Service.
  """
  use Application
  alias EventBus.Logger, as: EventBusLogger
  alias EventBus.Logger.Config
  alias EventBus.Logger.Supervisor.Console, as: ConsoleSupervisor

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    link =
      Supervisor.start_link([
        supervisor(ConsoleSupervisor, [], id: make_ref(), restart: :permanent),
      ], strategy: :one_for_one, name: EventBus.Logger.Supervisor)

    if Config.enabled?() do
      EventBus.subscribe({EventBus.Logger, Config.topics()})
    end

    link
  end
end
