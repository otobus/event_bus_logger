defmodule EventBus.Logger.Config do
  @moduledoc """
  Config reader for EventBus.Logger
  """

  @app :event_bus_logger

  def enabled? do
    @app
    |> Application.get_env(:enabled)
    |> get_env_var()
    |> to_bool()
  end

  def light_logging? do
    @app
    |> Application.get_env(:light_logging)
    |> get_env_var()
    |> to_bool()
  end

  def level do
    @app
    |> Application.get_env(:level)
    |> get_env_var()
    |> to_atom()
  end

  def topics do
    @app
    |> Application.get_env(:topics)
    |> get_env_var()
    |> to_list()
  end

  defp get_env_var({:system, name, default}),
    do: System.get_env(name) || default
  defp get_env_var(item),
    do: item

  defp to_list(val) when is_list(val),
    do: val
  defp to_list(val),
    do: String.split(val, ";")

  defp to_atom(val) when is_atom(val),
    do: val
  defp to_atom(val),
    do: String.to_atom(val)

  defp to_bool(val) do
    case "#{val}" do
      "1" ->
        true
      "true" ->
        true
      _ ->
        false
    end
  end
end
