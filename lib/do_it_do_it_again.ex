defmodule DoItDoItAgain do
  import Toys

  def elixir_lat?([]), do: true
  #lat? fails if any of the elements in the list are a list
  #other wise it passes. This is cover the case that one of
  #the elements is a list and return false.
  def elixir_lat?([[_|_]|_]), do: false
  def elixir_lat?([h|t]), do: elixir_lat?(t)

  #Elixir makes lat? easier with pattern matching
  #on [h|t] but I've implemented lat? as defined in the
  #book here.
  def lat?(l) do
    cond do
      null?(l) -> true
      atom?(car(l)) -> lat?(cdr(l))
      #This looks a bit weird but this is just the failing of
      #car(l) being an atom in which case false should be
      #returned. 
      true -> false
    end
  end

end
