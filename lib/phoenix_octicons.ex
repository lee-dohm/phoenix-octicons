defmodule PhoenixOcticons do
  @moduledoc """
  Provides helper functions for including [GitHub Octicons][https://octicons.github.com]
  in your Phoenix templates.

  ## Examples

  Inserts a normal-sized [beaker icon](https://octicons.github.com/icon/beaker/) in the template.

  ```elixir
  <%= octicon(:beaker) %>
  ```

  Inserts a mega-sized (32 pixels) [squirrel icon](https://octicons.github.com/icon/squirrel/) in
  the template.

  ```elixir
  <%= mega_octicon(:squirrel) %>
  ```
  """
  use Phoenix.HTML

  @doc """
  Inserts a normal-sized octicon in the current location in the template.
  """
  @spec octicon(Octicons.octicon_name, keyword) :: Phoenix.HTML.safe
  def octicon(name, options \\ [])

  def octicon(nil, _), do: nil

  def octicon(atom, options) when is_atom(atom), do: octicon(Atom.to_string(atom), options)

  def octicon(name, options), do: raw(Octicons.toSVG(name, options))

  @doc """
  Inserts a mega-sized (32 pixels) octicon in the current location in the template.
  """
  @spec mega_octicon(Octicons.octicon_name, keyword) :: Phoenix.HTML.safe
  def mega_octicon(name, options \\ [])

  def mega_octicon(name, options) do
    new_options =
      options
      |> Keyword.put(:height, 32)
      |> Keyword.put(:width, 32)

    octicon(name, new_options)
  end
end
