# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :event_bus_logger,
  enabled: {:system, "EB_LOGGER_ENABLED", "true"},
  level: {:system, "EB_LOGGER_PERSIST_IN_MS", :info},
  topics: {:system, "EB_LOGGER_TOPICS", ".*"}

import_config "#{Mix.env}.exs"
