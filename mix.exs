defmodule EventBus.Logger.Mixfile do
  use Mix.Project

  def project do
    [
      app: :event_bus_logger,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EventBus.Logger.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:event_bus, ">= 1.0.0"},
      {:uuid, "~> 1.1", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp aliases do
    []
  end

  defp description do
    """
    Log handler for event_bus
    """
  end

  defp package do
    [name: :event_bus_logger,
     files: ["lib", "mix.exs", "README.md"],
     maintainers: ["Mustafa Turan"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mustafaturan/event_bus_logger"}]
  end
end
