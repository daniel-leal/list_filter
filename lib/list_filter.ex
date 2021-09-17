defmodule ListFilter do
  @moduledoc """
  Este módulo contém funções de filtros de listas
  """

  @doc """
  Dada uma determinada lista, esta funcao retorna uma nova lista apenas com numeros impares
  """
  @spec call(list()) :: list(integer())
  def call(list) do
    list
    |> filter_numbers()
    |> convert_to_integer()
    |> filter_odds()
  end

  defp filter_numbers(list), do: Enum.filter(list, fn n -> String.match?(n, ~r/\d/) end)
  defp convert_to_integer(list), do: Enum.map(list, fn n -> String.to_integer(n) end)
  defp filter_odds(list), do: Enum.filter(list, fn n -> rem(n, 2) != 0 end)
end
