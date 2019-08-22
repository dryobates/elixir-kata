defmodule LeapYearsTest do
  use ExUnit.Case
  doctest LeapYears

  test "greets the world" do
    assert LeapYears.hello() == :world
  end
end
