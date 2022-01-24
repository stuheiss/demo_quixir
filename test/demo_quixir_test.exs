defmodule DemoQuixirTest do
  use ExUnit.Case
  doctest DemoQuixir

  test "greets the world" do
    assert DemoQuixir.hello() == :world
  end
end
