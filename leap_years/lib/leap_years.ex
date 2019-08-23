defmodule LeapYears do
  def is_leap(year) do
    if rem(year, 4) == 0 do
      true
    else
      false
    end
  end
end
