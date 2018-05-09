# WordGame

FizzBuzz を簡単に実現します。

```elixir
defmodule FizzBuzz do
  use WordGame, fizz: 3, buzz: 5
end
```

```elixir
 1 |> fizz() |> buzz() |> IO.puts() # => 1
 3 |> fizz() |> buzz() |> IO.puts() # => Fizz
 5 |> fizz() |> buzz() |> IO.puts() # => Buzz
15 |> fizz() |> buzz() |> IO.puts() # => FizzBuzz
15 |> buzz() |> fizz() |> IO.puts() # => BuzzFizz
```

HogeFuga も実現できます。

```elixir
defmodule HogeFuga do
  use WordGame, hoge: 2, fuga: 4
end
```

```elixir
import HogeFuga
1 |> hoge() |> fuga() |> IO.puts() # => 1
2 |> hoge() |> fuga() |> IO.puts() # => Hoge
3 |> hoge() |> fuga() |> IO.puts() # => 3
4 |> hoge() |> fuga() |> IO.puts() # => HogeFuga
```

ほげふが もいけます。

```elixir
defmodule HogeFuga do
  use WordGame, ほげ: 2, ふが: 4
end
```

```elixir
import HogeFuga
4 |> ほげ() |> ふが() |> IO.puts() # => ほげふが
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `word_game` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:word_game, "~> 0.1", github: "mattsan/word_game"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/word_game](https://hexdocs.pm/word_game).

