# EventBus.Logger

Listen and log `event_bus` events with Elixir Logger.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `event_bus_logger` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:event_bus_logger, "~> 0.1.0-beta3"}
  ]
end
```

## Configuration

```elixir
config :event_bus_logger,
  enabled: {:system, "EB_LOGGER_ENABLED", "true"}, # is it enabled
  level: {:system, "EB_LOGGER_LEVEL", :info}, # logging level
  topics: {:system, "EB_LOGGER_TOPICS", ".*"}, # can be seperated by ';'
  light_logging: {:system, "EB_LOGGER_LIGHT", "false"} # enable light logging
```

## Documentation

Module docs can be found at [https://hexdocs.pm/event_bus_logger](https://hexdocs.pm/event_bus_logger).

## Contributing

### Issues, Bugs, Documentation, Enhancements

1. Fork the project

2. Make your improvements and write your tests(make sure you covered all the cases).

3. Make a pull request.

## License

MIT
