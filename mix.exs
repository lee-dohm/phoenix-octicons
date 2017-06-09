defmodule PhoenixOcticons.Mixfile do
  use Mix.Project

  def project do
    [
      app: :phoenix_octicons,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      preferred_cli_env: [espec: :test]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:octicons, "~> 0.3.0"},
      {:phoenix_html, "~> 2.6"},
      {:cmark, "~> 0.7.0", only: :dev},
      {:ex_doc, "~> 0.16.1", only: :dev, runtime: false},
      {:espec, "~> 1.4.0", only: :test}
    ]
  end
end
