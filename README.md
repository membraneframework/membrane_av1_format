# Membrane AV1 Format

[![Hex.pm](https://img.shields.io/hexpm/v/membrane_av1_format.svg)](https://hex.pm/packages/membrane_av1_format)
[![API Docs](https://img.shields.io/badge/api-docs-yellow.svg?style=flat)](https://hexdocs.pm/membrane_av1_format)
[![CircleCI](https://circleci.com/gh/membraneframework/membrane_av1_format.svg?style=svg)](https://circleci.com/gh/membraneframework/membrane_av1_format)

It's a part of the [Membrane Framework](https://membrane.stream).

## Installation

Unless you're developing an Membrane Element it's unlikely that you need to use this package directly in your app, as normally it is going to be fetched as a dependency of any element that operates on AV1 video stream.

However, if you are developing an Element or need to add it due to any other reason, just add the following line to your deps in the mix.exs and run mix deps.get.

The package can be installed by adding `membrane_av1_format` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:membrane_av1_format, "~> 0.1.1"}
  ]
end
```

## Copyright and License

Copyright 2026, [Software Mansion](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane_av1_format)

[![Software Mansion](https://logo.swmansion.com/logo?color=white&variant=desktop&width=200&tag=membrane-github)](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane_av1_format)

Licensed under the [Apache License, Version 2.0](LICENSE)
