use Mix.Config

config :event_bus,
  observables: [
    :notify,
    :register_topic,
    :unregister_topic,
    :subscribe,
    :unsubscribe,
    :mark_as_completed,
    :mark_as_skipped
  ],
  id_generator: fn -> :base64.encode(:crypto.strong_rand_bytes(8)) end
