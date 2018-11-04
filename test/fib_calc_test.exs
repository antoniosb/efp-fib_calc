defmodule FibCalcTest do
  use ExUnit.Case
  doctest FibCalc

  test "greets the world" do
    assert FibCalc.hello() == :world
  end
end
