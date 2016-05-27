defmodule ToysTest do
  use ExUnit.Case
  import Toys

  test "car returns the first atom in a list" do
    assert car([:a,:b,:c]) == :a
    assert car([[:a,:b,:c], :x, :y, :z]) == [:a, :b, :c]
    assert car([[[:a]],[:b],:c]) == [[:a]]
    assert car(car([[[:a]],[:b]])) == [:a]
  end

  test "cdr returns the tail of a list" do
    assert cdr([:a,:b,:c]) == [:b, :c]
    assert cdr([[:a,:b,:c], :x, :y, :z]) == [:x, :y, :z]
    assert cdr([:a]) == []
  end

  test "various combos of cdr and car" do
    assert car(cdr([[:b],[:x,:y],[[:c]]])) == [:x, :y]
    assert cdr(cdr([[:b],[:x,:y],[[:c]]])) == [[[:c]]]
  end

  test "cons joins an atom to the head of a list" do
    assert cons(:a, [:b, :c]) == [:a, :b, :c]
    assert cons([:x, :y], [:b, :c]) == [[:x, :y], :b, :c]
    assert cons([[:a], :b], [:c, :d, [:e], :f]) == [[[:a], :b], :c, :d, [:e], :f]
    assert cons([:a, :b, [:c]], []) == [[:a, :b, [:c]]]
    assert cons(:a, []) == [:a]
  end

  test "various combos of cons with cdr and car" do
    assert cons(:a, car([[:b], :c, :d])) == [:a, :b]
    assert cons(:a, cdr([[:b], :c, :d])) == [:a, :c, :d]
  end

  test "null? returns true for an empty list" do
    assert null?([]) == true
  end
  
  test "null? returns false for an empty list" do
    assert null?([:a, :b, :c]) == false
  end

  test "atom? returns the correct value for various types" do
    assert atom?(:a) == true
    assert atom?([:a,:b]) == false
  end

  test "various combos of atom? with cdr and car" do
    assert atom?(car([:a, :b, :c])) == true
    assert atom?(cdr([:a, :b, :c])) == false
    assert atom?(cdr([:a])) == false
  end

  test "eq? returns the correct value for various types" do
    assert eq?(:a, :a) == true
    assert eq?(:a, :b) == false
  end

  test "various combos of eq? wtih cdr and car" do
    assert eq?(car([:x, :y, :z]), :x) == true
    l = [:a, :a, :b, :c]
    assert eq?(car(l), car(cdr(l))) == true
  end
end
