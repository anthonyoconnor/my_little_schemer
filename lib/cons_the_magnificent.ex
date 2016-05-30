defmodule ConsTheMagnificent do
  #removes the first occurrance of an item in a list
  def rember(_, []), do: [] 
  def rember(item, list), do: rember(item, list, [])

  defp rember(item, [], return), do: return
  defp rember(item, [item|t], return), do: (return ++ t)
  defp rember(item, [h|t], return), do: rember(item, t, return ++ [h])
end
