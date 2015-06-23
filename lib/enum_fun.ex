defmodule EnumFun.MyEnums do
  def all?([], f), do: true
  def all?([ head | tail ], f) do
    f.(head) && all?(tail, f)
  end

  def each([], f), do: :ok
  def each([ head | tail ], f) do
    f.(head)
    each(tail, f)
  end

  def filter([],f), do: []
  def filter([ head | tail ], f) do
    if f.(head) do
      [head] ++ filter(tail, f)
    else
      filter(tail, f)
    end
  end
end
