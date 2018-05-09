defmodule WordGameTest do
  use ExUnit.Case
  doctest WordGame

  test "greets the world" do
    assert WordGame.hello() == :world
  end
end
