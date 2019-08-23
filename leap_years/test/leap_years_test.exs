defmodule LeapYearsTest do
  use ExUnit.Case
  doctest LeapYears

  test "is not leap when not divisible by 4" do
    assert LeapYears.is_leap(2001) == false
  end

  test "is leap when divisible by 4" do
    assert LeapYears.is_leap(2004) == true
  end

  test "is not leap when divisible by 100" do
    assert LeapYears.is_leap(1900) == false
  end
end
