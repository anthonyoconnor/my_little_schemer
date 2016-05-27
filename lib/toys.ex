defmodule Toys do 
  #Car
  #Car is defined only for non empty lists.
  def car([h|_]), do: h
    

  #Cdr
  #Cdr is defined only for non empty lists.
  #The cdr of any non-empty list is always another list.
  def cdr([_|t]), do: t

  
  #Cons
  #Cons takes two agruments.
  #The second argument to cons must be a list.
  #The result is a list.
  def cons(atom, list), do: [atom | list]

  #Null?
  #Null? is defined only for lists.
  def null?([]), do: true
  def null?([_|_]), do: false

  def atom?([_|_]), do: false
  def atom?([]), do: false
  def atom?(_), do: true
  
  #Eq?
  #Eq? takes two arguments.
  #Each must be a non-numeric atom.
  def eq?(x, x) when is_atom(x), do: true
  def eq?(x, y) when is_atom(x) and is_atom(y), do: false 
  
end
