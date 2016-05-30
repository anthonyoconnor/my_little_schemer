defmodule ConsTheMagnificentTest do
  use ExUnit.Case

  import ConsTheMagnificent

  test "rember removes the first occurrance of an value in a list" do
    assert rember(:b, []) == []
    assert rember(:b, [:a, :b, :c]) == [:a, :c]
    assert rember(:x, [:d, :e, :f]) == [:d, :e, :f]
  end
end
