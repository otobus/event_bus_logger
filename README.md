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

Copyright (c) 2018 Mustafa Turan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
