# DemoQuixir

**A simple demo of Property-based Testing with Quixir**

## Quixir: Pure Elixir Property-based Testing

Quick setup, add Quixir to deps in mix.exs, install with mix.
```elixir
  defp deps do
    [
      {:quixir, "~> 0.9", only: :test }
    ]
  end
```

```sh
sh> mix deps.get
```

See [Quixir docs](https://hexdocs.pm/quixir/Quixir.html)

See [Anatomy of a Property Test](https://hexdocs.pm/quixir/Quixir.html#module-anatomy-of-a-property-test)

See [Type Specifications](https://hexdocs.pm/quixir/Quixir.html#module-type-specifications)

See [List of Type Generators](https://hexdocs.pm/quixir/Quixir.html#module-list-of-type-generators)

Quixir uses [Polution](https://hexdocs.pm/pollution/Pollution.html) to create streams of values with potentially complex data types.

## Demo

```sh
sh> mix test
```

See lib/my_list.ex and test/my_list_test.exs

----
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/demo_quixir](https://hexdocs.pm/demo_quixir).
