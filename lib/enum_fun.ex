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

  def split(collection, 0), do: {[],collection}
  def split([ head | tail ], 1), do: { [head], tail }
  def split([], count), do: { [], [] }
  def split([ head | tail ], count) do
    {front, back} = split(tail, count - 1)
    {[head | front], back}
  end
end
