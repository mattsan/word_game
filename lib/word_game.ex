defmodule WordGame do
  defstruct number: nil, phenotype: ""

  defmacro __using__(opts) do
    opts
    |> Enum.map(fn {name, divisor} ->
      str = String.capitalize("#{name}")

      quote do
        def unquote(name)(number) when is_integer(number) do
          unquote(name)(%WordGame{number: number})
        end

        def unquote(name)(%WordGame{number: number, phenotype: phenotype} = word_game)
            when rem(number, unquote(divisor)) == 0 do
          %WordGame{word_game | phenotype: phenotype <> unquote(str)}
        end

        def unquote(name)(%WordGame{} = word_game) do
          word_game
        end
      end
    end)
  end
end

defimpl String.Chars, for: WordGame do
  def to_string(%WordGame{number: number, phenotype: ""}), do: "#{number}"
  def to_string(%WordGame{phenotype: phenotype}), do: phenotype
end
