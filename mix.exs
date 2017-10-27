defmodule Shadowsocks.Mixfile do
  use Mix.Project

  def project do
    [
      app: :shadowsocks,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Shadowsocks, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:yamerl, "~> 0.4.0"}
    ]
  end
end