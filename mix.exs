defmodule PhoenixOcticons.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :phoenix_octicons,
      version: @version,
      deps: deps(),

      name: "Phoenix Octicons",
      description: "Makes GitHub's Octicons available to a Phoenix framework application",
      source_url: "https://github.com/lee-dohm/phoenix-octicons",
      homepage_url: "https://github.com/lee-dohm/phoenix-octicons",
      docs: docs(),
      package: package(),

      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:octicons, "~> 0.5"},
      {:phoenix_html, "~> 2.6"},
      {:cmark, "~> 0.7", only: :dev},
      {:ex_doc, "~> 0.18", only: :dev, runtime: false},
      {:version_tasks, "~> 0.10", only: :dev}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", "LICENSE.md"]
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Lee Dohm"],
      links: %{"GitHub" => "https://github.com/lee-dohm/phoenix-octicons"}
    ]
  end
end
