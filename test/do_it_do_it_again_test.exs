defmodule DoItDoItAgainTest do
  use ExUnit.Case
  import DoItDoItAgain

  test "a lat is a list of atoms" do
    assert lat?([:a,:b,:c]) == true
    assert lat?([[:a],:b,:c]) == false
    assert lat?([:a,[:b,:c], :d]) == false
  end

  test "an elixir_lat is a list of atoms" do
    assert elixir_lat?([:a,:b,:c]) == true
    assert elixir_lat?([[:a],:b,:c]) == false
    assert elixir_lat?([:a,[:b,:c], :d]) == false
  end
end
