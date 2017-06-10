# Phoenix Octicons

[![Hex Version](https://img.shields.io/hexpm/v/phoenix_octicons.svg)](https://hex.pm/packages/phoenix_octicons)
[![API Docs](https://img.shields.io/badge/api-docs-green.svg)](https://hexdocs.pm/phoenix_octicons/)
[![License](https://img.shields.io/github/license/lee-dohm/phoenix-octicons.svg)](https://github.com/lee-dohm/phoenix-octicons/blob/master/LICENSE.md)

Makes GitHub's Octicons available to a [Phoenix framework](http://www.phoenixframework.org) application.

## Use

In your Phoenix application, inside your `web/web.ex` file in the quoted section of the `view/0` function, insert:

```elixir
import PhoenixOcticons
```

Then you can use the `octicon` and `mega_octicon` helper functions in your templates.

## License

[MIT](https://github.com/lee-dohm/phoenix-octicons/blob/master/LICENSE.md)
